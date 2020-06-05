import 'package:flutter/material.dart';
Widget cardListContainer(listTileVar) {
  return Container(
    child: Card(
      elevation: 5,
      margin: EdgeInsets.all(9),
      child: listTileVar,
    ),
  );
}
