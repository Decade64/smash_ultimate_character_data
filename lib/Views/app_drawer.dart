import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smashultimatecharacterdata/Views/favorites_page.dart';


Widget appDrawer() {
  return Drawer(
    child: ListView(
      children: [
      Builder(
        builder: (context){
          return ListTile(
            title: Text("Favorites"),
            trailing: Icon(Icons.star),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritesPage()));
            },
          );
        },
      ),
      Builder(
        builder: (context){
          return ListTile(
            title: Text("About"),
            trailing: Icon(Icons.more),
            onTap: (){
              showAboutDialog(
              context: context,
              applicationVersion: 'pre-pre-alpha',
              applicationLegalese: legal,
              );
            },
          );
        },
      )
      ],
    ),
  );
}

//Legaleese
String legal = """
This application is distributed under the GNU General Public License
""";