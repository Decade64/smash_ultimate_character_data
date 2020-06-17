import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smashultimatecharacterdata/Views/favorites_page.dart';
import 'package:smashultimatecharacterdata/Views/search_view.dart';
import 'package:url_launcher/url_launcher.dart';


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
              title: Text("Fighter Search"),
              trailing: Icon(Icons.search),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchView()));
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
              children: [
                Text("Developed/Maintained by Decade, donations are appreciated but not necessary"),
                InkWell(
                  child: Text("Decade's twitter", style: TextStyle(color: Colors.blue),),
                  onTap: (){
                    launch("https://twitter.com/DecadeSmash");
                  },
                ),
                InkWell(
                  child: Text("Donations", style: TextStyle(color: Colors.blue),),
                  onTap: (){
                    launch("https://www.paypal.me/DecadeSmash");
                  },
                ),
                Text("Image source;"),
                InkWell(
                  child: Text("Smash Wiki", style: TextStyle(color: Colors.blue),),
                  onTap: (){
                    launch("https://www.ssbwiki.com/");
                  },
                ),
                Text("Information collected and evaluated from the discord"),
                InkWell(
                  child: Text("SSBU Compendium Discord",style: TextStyle(color: Colors.blue),),
                  onTap: (){
                    launch("https://discord.gg/r8tpMxP");
                  },
                )
              ],
              );
            },
          );
        },
      ),
      ],
    ),
  );
}

