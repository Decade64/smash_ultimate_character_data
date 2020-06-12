import 'package:flutter/material.dart';
import 'Views/list_view.dart';
import 'Views/app_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SSBU Compendium",
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("Fighters"),
        ),
        body: Center(
          child: listyBoi(),
        ),
        drawer: appDrawer(),
      ),
    );
  }
}
