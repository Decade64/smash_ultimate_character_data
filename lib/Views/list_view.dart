import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:smashultimatecharacterdata/Fighters/FighterDefinition.dart';
import 'Fancys/list_view_fancys.dart';
import 'character_view.dart';
import 'package:smashultimatecharacterdata/Fighters/AllFighters.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

//The list
Widget listyBoi() {
  //The search bar needs a future object that handles searching
  Future<List<Fighter>> fighterSearch(String search) async{
    //Make some variables to make things shorter
    List<Fighter> allFighters = AllFighters().fighterData;
    List<Fighter> filteredFighters;
    filteredFighters = [];
    //Filter through the fighters based on name
    allFighters.forEach((element) {
      if (element.name.data.toLowerCase().contains(search.toLowerCase())){
        filteredFighters.add(element);
      }
    });
    //Give the result
    return filteredFighters;
  }

  final fighters = new AllFighters().finalFighterData;
  return SearchBar(
    //Functionality
      //Search
    onSearch: fighterSearch,
      //Default list
    suggestions: fighters,
      //Minimum characters to start filtering, why the fuck is the default 3?
    minimumChars: 1,
      //Give the item in the form of a widget
    onItemFound: (fighter, index){
      Fighter convertedFighter = fighter;
      return Builder(
        builder: (context){
          return cardListContainer(
            ListTile(
              title: convertedFighter.name,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CharacterInfoView(convertedFighter)));
              },
            )
          );
        },
      );
    },
    //Styling
    searchBarPadding: EdgeInsets.all(12),
    searchBarStyle: SearchBarStyle(
      backgroundColor: Colors.white,
      padding: EdgeInsets.all(5),

    ),
  );
}