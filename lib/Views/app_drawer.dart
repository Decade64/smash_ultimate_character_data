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
      ],
    ),
  );
}
