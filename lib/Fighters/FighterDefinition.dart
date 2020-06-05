import 'package:flutter/material.dart';
import 'package:smashultimatecharacterdata/Fighters/More/FighterViews.dart';
import 'package:smashultimatecharacterdata/Fighters/More/FighterPlaystyleTriangle.dart';
import 'More/CreditedContributor.dart';
import 'dart:ui' as ui;

class Fighter {
  Text name;
  Image fighterImage;
  String stockIconImageLocation;
  ui.Offset stockIconGraphOffset;
  Color barColor;
  String discordLink;
  String ultimateFrameDataLink;
  String tacticsTitle;
  String tacticsBody;
  List<Widget> additionalWidgets;
  List<CreditedContributor> contributors;

  Fighter(
      {@required this.name,
      @required this.stockIconImageLocation,
      @required this.fighterImage,
      @required this.stockIconGraphOffset,
      @required this.barColor,
      @required this.discordLink,
      @required this.ultimateFrameDataLink,
      @required this.additionalWidgets,
      @required this.contributors,
      @required this.tacticsBody,
      @required this.tacticsTitle}){
    //Contributors listed in all fighters
    List<CreditedContributor> editedContributors;
    editedContributors = [];
    editedContributors.add(CreditedContributor(
            contributor: "Smash Wiki",
            contribution: "Image Media Source",
            plugsAndLinks: {"Website" : "https://www.ssbwiki.com/"}
        )
    );
    editedContributors.add(CreditedContributor(
      contributor: "Smashcords",
      contribution: "Discord Source",
      plugsAndLinks: {"Website": "https://smashcords.com/"}
    ));
    contributors.forEach((element) {
      editedContributors.add(element);
    });
    this.contributors = editedContributors;
  }
  //takes the stock image icon location text and reads the file
  Image fighterStockIcon() {
    return Image.asset(stockIconImageLocation);
  }

  //Widgets Combined, comments organized by index
  List<Widget> allWidgets() {
    List<Widget> widgets;
    widgets = [];
    //0.) Fighter Image
    widgets.add(this.fighterImage);
    //1.) Links
    widgets.add(links());
    //2.) Play type graph
    widgets.add(playstyleGraph());
    //3.) Play type description
    widgets.add(fighterTactics());
    //Anything else you might want
    for (var widget in additionalWidgets) {
      widgets.add(widget);
    }
    return widgets;
  }
  //Just the extras without the triangle
List<Widget> otherWidgets(){
    List<Widget> widgets;
    widgets = [];
    widgets.add(fighterTactics());
    //Anything else you might want
    for (var widget in additionalWidgets) {
      widgets.add(widget);
    }
    return widgets;

}

}
