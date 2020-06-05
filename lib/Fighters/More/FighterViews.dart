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
