import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:smashultimatecharacterdata/Fighters/FighterDefinition.dart';
import 'character_view.dart';
import 'package:smashultimatecharacterdata/Fighters/AllFighters.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

//The Search list
Widget searchListyBoi() {
  //The search bar needs a future object that handles searching
  Future<List<String>> fighterSearch(String search) async {
    //Include all fighters as a future, hopefully this will provide a buffer of sorts
    Map<String, Fighter> allFighters = AllFighters().fighterMap();
    List<String> filteredFighters;
    filteredFighters = [];
    //Filter through the fighters based on name
    allFighters.forEach((key, value) {
      if (key.toLowerCase().contains(search.toLowerCase())) {
        filteredFighters.add(key);
      }
    });
    //Give the result
    return filteredFighters;
  }

  List<String> fighters;
  fighters = [];
  AllFighters().fighterMap().forEach((key, value){
    fighters.add(key);
  });
  return Builder(
      builder: (context) {
        return SearchBar(
          //Functionality
          //Search
          onSearch: fighterSearch,
          //Default list

          //Minimum characters to start filtering, why the fuck is the default 3?
          minimumChars: 1,
          //Give the item
          onItemFound: (fighterNameString, index) {
            String convertedFighterName = fighterNameString;
            return Card(
              child: ListTile(title: Text(convertedFighterName),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CharacterInfoView(convertedFighterName)));
              },),
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
  );
}

Widget listyBoi(){
      List<String> fighters = [];
      AllFighters().fighterMap().forEach((key, value){
        fighters.add(key);
      });
      return ListView.builder(
        itemCount: fighters.length,
          itemBuilder: (context,index){
            return Card(
              margin: EdgeInsets.only(top: 15, left: 12, right: 12),
              child: ListTile(
                title: Text(fighters[index]),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CharacterInfoView(fighters[index])));
                  },
              ),
            );
          });

}