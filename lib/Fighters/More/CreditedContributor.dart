import 'package:flutter/material.dart';

class CreditedContributor {
  //Values
  String contributor;
  String contribution;
  Map<String, String> plugsAndLinks;

  CreditedContributor(
      {@required this.contributor,
      @required this.contribution,
      @required this.plugsAndLinks});


  //Common contributors
    //Izaw
  CreditedContributor izaw(){
    return CreditedContributor(
        contributor:"Izaw",
        contribution: "'Art of' series",
        plugsAndLinks: {
          "Youtube" : "https://www.youtube.com/channel/UC3SM8yOKKwU8PYqwsNP5rGA",
          "Twitch" : "https://www.twitch.tv/izawsmash",
          "Twitter" : "https://twitter.com/Izawsmash"
        });
  }
}
