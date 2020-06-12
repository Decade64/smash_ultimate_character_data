import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smashultimatecharacterdata/Fighters/FighterDefinition.dart';
import 'package:smashultimatecharacterdata/Fighters/More/Favorites.dart';
import 'package:smashultimatecharacterdata/Views/character_view.dart';
class _FavoritesPageState extends State<FavoritesPage>{
  Future<List<Fighter>> favoriteFighters = Favorites().getFavoritesAsFighterList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"),
        backgroundColor: Colors.yellow,
      ),

      body: Center(
        child: Container(
          color: Colors.yellow,
          child: FutureBuilder(
            future: favoriteFighters,
            builder: (context, snapshot){
              if(snapshot == null){
                return Text("No favorites found, open the dropdown menu on a fighter page to add it here!",
                textAlign: TextAlign.center,);
              }
              if(snapshot.connectionState == ConnectionState.active){
                return Text("Loading");
              }
             if(snapshot.connectionState == ConnectionState.done){
               List<Fighter> favorites = snapshot.data;
               if (favorites.isEmpty){
                 return Text("No favorites found, open the dropdown menu on a fighter page to add it here!",
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   backgroundColor: Colors.transparent
                 ),);
               }
               return GridView.builder(
                   itemCount: favorites.length,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                   itemBuilder: (context, index){
                     return Card(
                       elevation: 5,
                       child: ListTile(
                         //Style
                         contentPadding: EdgeInsets.only(bottom: 50),
                         subtitle: Text(favorites[index].name.data, textAlign: TextAlign.center,),
                         title: favorites[index].fighterImage,
                         trailing: IconButton(
                           icon: Icon(Icons.delete, color: Colors.red,),
                           onPressed: () async{
                             await Favorites().removeFavorite(favorites[index].name.data);
                             await Future.delayed(Duration(milliseconds: 50));
                             Navigator.replace(context, oldRoute: ModalRoute.of(context), newRoute: MaterialPageRoute(builder: (context) => FavoritesPage()));
                           },
                         ),
                         //Function
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) => CharacterInfoView(favorites[index].name.data)));
                         },
                       ),
                     );
                   }
                   );
             }
             return Text("Loading...");
            }
          )
        ),
      ),
    );
  }
}

class FavoritesPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FavoritesPageState();
}