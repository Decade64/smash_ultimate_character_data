import 'dart:convert';

import 'package:path_provider/path_provider.dart';
import 'package:smashultimatecharacterdata/Fighters/AllFighters.dart';
import 'dart:io';
import 'package:smashultimatecharacterdata/Fighters/FighterDefinition.dart';
import 'package:json_annotation/json_annotation.dart';
part 'Favorites.g.dart';

@JsonSerializable(nullable: false)
class Favorites{
  //The variable we want to store
  final List<String> favoriteFighters;
  Favorites({this.favoriteFighters});


  //Json stuff
  factory Favorites.fromJson(Map<String, dynamic> json) => _$FavoritesFromJson(json);
  Map<String, dynamic> toJson() => _$FavoritesToJson(this);

  //Read/Write names
    //Setup
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }
  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/nameList.json');
  }
    //Write
  Future<File> writeFavorites(Favorites fighters) async {
    final file = await _localFile;
    // Write the file.
    return file.writeAsString(jsonEncode(fighters));
  }
  //Read
  Future<Favorites> readFavorites() async {
    try {
      final file = await _localFile;

      // Read the file.
      String contents = await file.readAsString();
      //Turn the text into json that we can understand and use
      Map favoritesMap = jsonDecode(contents);
      var favorites = Favorites.fromJson(favoritesMap);
      return favorites;
    } catch (e) {
      // If encountering an error, return whatever the hell 'e' is
      return e;
    }
  }


//Take the existing list and add another fighter to it then save
  addFavorite(String fighterName){
    readFavorites().then((favorites){
      List<String> favoriteList;
      favoriteList = favorites.favoriteFighters;
      favoriteList.add(fighterName);
      writeFavorites(Favorites(favoriteFighters: favoriteList));
    });
  }
  //Remove fighter from list
  removeFavorite(String fighterName){
    readFavorites().then((favorites){
      List<String> favoriteList;
      favoriteList = favorites.favoriteFighters;
      favoriteList.remove(fighterName);
      writeFavorites(Favorites(favoriteFighters: favoriteList));
    });
  }
//Generate a list of fighters to be viewed, very messy, should be using key-value pairs but we can do that later
  Future<List<Fighter>> getFavoritesAsFighterList() async{
    List<Fighter> finalFighters = [];
    Favorites finalFavorites = await readFavorites();
    finalFavorites.favoriteFighters.forEach((fighterString) {
      finalFighters.add(AllFighters().fighterMap()[fighterString]);
    });
    return finalFighters;
  }
}