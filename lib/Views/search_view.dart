import 'package:flutter/material.dart';
import 'package:smashultimatecharacterdata/Views/list_view.dart';

class SearchView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Fighter Search"),
        backgroundColor: Colors.blue,
      ),
      body: searchListyBoi(),
    );
  }
}