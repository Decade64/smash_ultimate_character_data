import 'dart:io' show Platform;
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:photo_view/photo_view.dart';
import 'package:smashultimatecharacterdata/Fighters/FighterDefinition.dart';
import 'package:smashultimatecharacterdata/Fighters/More/CreditedContributor.dart';
import 'package:url_launcher/url_launcher.dart';

extension fighterVeiws on Fighter {
  //Links Widget
  Widget links() {
    List<dynamic> links;
    List<String> linkNames;
    links = [discordLink, ultimateFrameDataLink, 0];
    linkNames = ["Fighter Discord", "Fighter Frame Data", "Credits"];
    if (discordLink == ""){
      links.remove(discordLink);
      linkNames.remove("Fighter Discord");
    }
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: linkNames.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: ListTile(
              title: Text(linkNames[index]),
              onTap: () {
                if (links[index] is String) {
                  launch(links[index]);
                }
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreditsView(this)));
              },
            ),
          );
        });
  }

  //Fighter description widget
  Widget fighterTactics() {
    return Center(
        child: Card(
      elevation: 15,
      margin: EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 25),
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.all(35),
                  child: Text(
                    tacticsTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                ),
              );
            }
            return Card(
                color: Colors.transparent,
                elevation: 0,
                child: ListTile(title: Text(tacticsBody, textAlign: TextAlign.justify,)));
          }),
    ));
  }

  //Credits page for the fighter
  Widget credits() {
    return ListView.builder(
        itemCount: contributors.length + 1,
        itemBuilder: (context, index) {
          //I'm not sure how to make this text look at least semi-professional but let's just use a transparent card for the preface for now as it helps with spacing
          if (index == 0) {
            return Center(
                child: Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: ListTile(
                    title: Text(
                      "All media and informational sources for this fighter are cited here, a big thank you to everyone!\nJust tap on a card to see their links",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 27,
                      ),
                    ),
                  ),
                ));
          }
          //Now for the contributors, jeez that last bit was long
          return Card(
            elevation: 5,
            child: ListTile(
              title: Text(contributors[index - 1].contributor),
              subtitle: Text(contributors[index - 1].contribution),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => PlugsView(this,contributors[index - 1])));
              },
            ),
          );
        });
  }
}
//The view for the credits
class CreditsView extends StatelessWidget {
  //Remember the fighter we came from
  final Fighter fighter;
  CreditsView(this.fighter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fighter About/Info"),
        backgroundColor: fighter.barColor,
      ),
      body: Center(child: fighter.credits()),
    );
  }
}
//Everyone's plugs
class PlugsView extends StatelessWidget{
  //Fighter for color and contributor for their plugs
  final Fighter fighter;
  final CreditedContributor contributor;
  PlugsView(this.fighter,this.contributor);

  @override
  Widget build(BuildContext context) {
    //Get all plugs and make them int index-able... somehow
    List<String> plugArray;
    //Don't forget to make sure it exists
    plugArray = [];
    contributor.plugsAndLinks.keys.forEach((element) {
      plugArray.add(element);
    });
    //That should work for now

    return Scaffold(
      appBar: AppBar(
        backgroundColor: fighter.barColor,
        title: Text(contributor.contributor + "'s plugs"),
      ),
      body: ListView.builder(
          itemCount: plugArray.length,
          itemBuilder: (context, index){
            return Card(
              margin: EdgeInsets.only(top: 10, left: 10,right: 10),
              elevation: 5,
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.all(15),
                    title: Text(plugArray[index], textAlign: TextAlign.center,),
                    subtitle: FlatButton(
                      child: Text(contributor.plugsAndLinks[plugArray[index]],style: TextStyle(
                        color: Colors.blue
                      ),),
                      onPressed: (){launch(contributor.plugsAndLinks[plugArray[index]]);},
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

//Image Viewer
class pictureInfographicViewer extends StatelessWidget{
  final AssetImage displayedPicture;
  final String tag;
  pictureInfographicViewer(this.displayedPicture,this.tag);
  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: tag,
        child:GestureDetector(
          onTap: (){
          Navigator.pop(context);
        },
          child: PhotoView(
          imageProvider: displayedPicture,
      ),
    )
    );
  }
}
//Text view
class textInfoView extends StatelessWidget{
  final Color fighterColor;
  final String message;
  final Text title;
  textInfoView(this.fighterColor,this.message,this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: fighterColor,),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          title,
          Padding(
            padding: const EdgeInsets.all(17),
            child: Text(message, textAlign: TextAlign.justify,),
          ),
        ],
      )
    );
  }
}
//Stage preference view
class stagesInfoView extends StatelessWidget{
  final Color fighterColor;
  final List<StagePreference> stages;
  stagesInfoView(this.fighterColor,this.stages);
  @override
  Widget build(BuildContext context) {
    //Stages
    List<Widget> good = [];
    List<Widget> bad = [];
    List<Widget> neutral = [];

    //Organize the stages
    stages.forEach((stage) {
      //Good
      if(stage.goodOrBad == StageGoodOrBad.good){
        good.add(Card(
          elevation: 15,
            child:Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: stageImage(stage.stage),
            ))
        );
      }
      //Bad
      if(stage.goodOrBad == StageGoodOrBad.bad){
        bad.add(Card(
            elevation: 15,
            child:Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: stageImage(stage.stage),
            ))
        );
      }
      //Neutral
      if(stage.goodOrBad == StageGoodOrBad.neutral){
        neutral.add(Card(
            elevation: 15,
            child:Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: stageImage(stage.stage),
            ))
        );
      }
    });
    return Scaffold(
      appBar: AppBar(backgroundColor: fighterColor,),
      body: Container(
        color: fighterColor,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Card(
                elevation: 15,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text("Good",textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
            ),
            //Good stages
            SliverToBoxAdapter(
              child: Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: good,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Card(
                  elevation: 15,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text("Bans",textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: bad,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Card(
                  elevation: 15,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text("Neutral",textAlign: TextAlign.center,style: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: neutral,
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}

//Youtube link launcher
void openYoutube(String urlStartWithWww) async{
  if(Platform.isIOS){
    if (await canLaunch("youtube://$urlStartWithWww")){
      await launch("youtube://$urlStartWithWww", forceSafariVC: false);
    } else {
      if (await canLaunch("youtube://$urlStartWithWww")){
        await launch("youtube://$urlStartWithWww");
      } else{
        throw "Cannot launch youtube://$urlStartWithWww";
      }
    }
  } else{
     String url = "https://$urlStartWithWww";
     if(await canLaunch(url)){
       await launch(url);
     } else {
       throw "Cannot launch $url";
     }
  }
}

//Card List View
Widget FancyContainerCardListView(List<Widget> children){
  return Container(
    child: Card(
      elevation: 15,
      margin: EdgeInsets.all(15),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: children,
      ),
    ),
  );
}

//Stage things
class StagePreference{
  Stage stage;
  StageGoodOrBad goodOrBad;
  String adv;
  String dis;
  StagePreference(this.stage,this.goodOrBad,this.adv,this.dis);
}
enum Stage{
  ps1,
  ps2,
  kalos,
  unova,
  bf,
  fd,
  lylat,
  tc,
  sv,
  ys,
  yi,
}
enum StageGoodOrBad{
  good,
  bad,
  neutral
}
String stageString(Stage stage){
  switch(stage){
    case Stage.ps1:{
      return "Pokemon Stadium 1";
    }
    case Stage.ps2:{
      return "Pokemon Stadium 2";
    }
    case Stage.kalos:{
      return "Kalos Pokemon League";
    }
    case Stage.unova:{
      return "Unova";
    }
    case Stage.bf:{
      return "Battlefield";
    }
    case Stage.fd:{
      return "Final Destination";
    }
    case Stage.lylat:{
      return "Lylat Cruise";
    }
    case Stage.tc:{
      return "Town and City";
    }
    case Stage.sv:{
      return "Smashville";
    }
    case Stage.ys:{
      return "Yoshi's Story";
    }
    case Stage.yi:{
      return "Yoshi's Island";
    }
  }
}

Image stageImage(Stage stage){
  switch(stage){
    case Stage.ps1:{
      return Image.asset("lib/assets/stageImages/ps1.jpg",width: 250,height: 250,);
    }
    case Stage.ps2:{
      return Image.asset("lib/assets/stageImages/ps2.jpg",width: 250,height: 250,);
    }
    case Stage.kalos:{
      return Image.asset("lib/assets/stageImages/kalos.jpg",width: 250,height: 250,);
    }
    case Stage.unova:{
      return Image.asset("lib/assets/stageImages/unova.jpg",width: 250,height: 250,);
    }
    case Stage.bf:{
      return Image.asset("lib/assets/stageImages/bf.jpg",width: 250,height: 250,);
    }
    case Stage.fd:{
      return Image.asset("lib/assets/stageImages/fd.jpg",width: 250,height: 250,);
    }
    case Stage.lylat:{
      return Image.asset("lib/assets/stageImages/lylat.jpg",width: 250,height: 250,);
    }
    case Stage.tc:{
      return Image.asset("lib/assets/stageImages/tc.jpg",width: 250,height: 250,);
    }
    case Stage.sv:{
      return Image.asset("lib/assets/stageImages/sv.jpg",width: 250,height: 250,);
    }
    case Stage.ys:{
      return Image.asset("lib/assets/stageImages/ys.jpg",width: 250,height: 250,);
    }
    case Stage.yi:{
      return Image.asset("lib/assets/stageImages/yi.jpg",width: 250,height: 250,);
    }
  }
}
Widget stageWidget(){}