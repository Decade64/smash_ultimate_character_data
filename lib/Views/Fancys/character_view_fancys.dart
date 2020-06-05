import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smashultimatecharacterdata/Fighters/More/Favorites.dart';
import 'package:smashultimatecharacterdata/Views/character_view.dart';
import 'package:smashultimatecharacterdata/Views/favorites_page.dart';

extension fancyAppBar on CharacterInfoView{
  Widget fancyCharacterAppBar(){
    return AppBar(
      backgroundColor: fighter.barColor,
      title: fighter.name,
      actions: [
        PopupMenuButton<String>(
          onSelected: (result){
            if(result == "save"){
              Favorites().addFavorite(fighter.name.data);
            }
          },
          itemBuilder: (BuildContext context){
            return [
              PopupMenuItem(
                  value: "save",
                  child: Text("Add to favorites")
              ),
            ];
          },
        )
      ],
    );
  }

  Widget fancyCharacterViewBody(context){
    //Arrays separated by fighter views to separate sliver Grid/List
    List<Widget> otherWidgets = fighter.allWidgets();
    otherWidgets.removeRange(0,1);
    List<Widget> withoutTriangle = [];
    return Center(
      child: Container(
        color: fighter.barColor,
        child: CustomScrollView(
          slivers: <Widget>[
            //Image and link widgets
            SliverGrid.count(crossAxisCount: 2, children: [fighter.allWidgets()[0], fighter.allWidgets()[1]],),
            SliverGrid.count(crossAxisCount: 1, children: [otherWidgets[1]],),
            SliverList(delegate: SliverChildListDelegate(fighter.otherWidgets()),)
          ],
        ),
      ),
    );
  }
}