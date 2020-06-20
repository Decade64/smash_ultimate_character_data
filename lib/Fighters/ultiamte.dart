import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smashultimatecharacterdata/Fighters/More/CreditedContributor.dart';
import 'FighterDefinition.dart';
import 'More/FighterViews.dart';

List<Fighter> ultimate(){
  List<Fighter> ultimate = [];
  //Inkling
  ultimate.add(Fighter(
    name: Text("Inkling"),
    fighterImage: Image.asset("lib/assets/ultimate/InklingImage.png"),
    stockIconImageLocation: "lib/assets/ultimate/InklingStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.deepOrange,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/inkling.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [
      youtubeLinkCard("Art of Inkling", "youtu.be/rZjPU3FtRQU")
    ],
    contributors: [
      CreditedContributor().izaw()
    ]
  ));
  //Ridley
  ultimate.add(Fighter(
      name: Text("Ridley"),
      fighterImage: Image.asset("lib/assets/ultimate/RidleyImage.png"),
      stockIconImageLocation: "lib/assets/ultimate/RidleyStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.purple,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/ridley.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Simon and Richter
  ultimate.add(Fighter(
      name: Text("Simon and Richter"),
      fighterImage: Image.asset("lib/assets/ultimate/SimonImage.png"),
      stockIconImageLocation: "lib/assets/ultimate/SimonStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.brown,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/simon.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //King K rool
  ultimate.add(Fighter(
      name: Text("King K rool"),
      fighterImage: Image.asset("lib/assets/ultimate/KingKRoolImage.png"),
      stockIconImageLocation: "lib/assets/ultimate/KingKRoolStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.green,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/king_k_rool.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Isabelle
  ultimate.add(Fighter(
      name: Text("Isabelle"),
      fighterImage: Image.asset("lib/assets/ultimate/IsabelleImage.png"),
      stockIconImageLocation: "lib/assets/ultimate/IsabelleStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.yellow,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/isabelle.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Incineroar
  ultimate.add(Fighter(
      name: Text("Incineroar"),
      fighterImage: Image.asset("lib/assets/ultimate/IncineroarImage.png"),
      stockIconImageLocation: "lib/assets/ultimate/IncineroarStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.red,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/incineroar.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Piranha Plant
  ultimate.add(Fighter(
      name: Text("Piranha Plant"),
      fighterImage: Image.asset("lib/assets/ultimate/PiranhaPlantImage.png"),
      stockIconImageLocation: "lib/assets/ultimate/PirhanaPlantStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.green,
      discordLink: "https://discord.com/invite/HfsFQ8j",
      ultimateFrameDataLink: "https://ultimateframedata.com/incineroar.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [
        youtubeLinkCard("Art of Plant", "youtu.be/AS9niTSzi6g"),
        linkCard("Plant Moveset VS other things", "https://docs.google.com/spreadsheets/d/1yjDBqeHJC-NSuNQB1SdRR3Gj_igFplKCyz-CMPJURhg/edit?usp=sharing"),
      ],
      contributors: [
        CreditedContributor().izaw(),
        CreditedContributor(
          contributor: "EyeDonutz",
          contribution: "Plant Move Doc",
          plugsAndLinks: {
            "Twitter" : "https://twitter.com/theEyeDonutz"
          }
        )
      ]
  ));
  //Joker
  ultimate.add(Fighter(
      name: Text("Joker"),
      fighterImage: Image.asset("lib/assets/ultimate/JokerImage.png"),
      stockIconImageLocation: "lib/assets/ultimate/JokerStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.black,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/joker.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Hero
  ultimate.add(Fighter(
      name: Text("Hero"),
      fighterImage: Image.asset("lib/assets/ultimate/HeroImage.png"),
      stockIconImageLocation: "lib/assets/ultimate/HeroStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.purpleAccent,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/hero.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Banjo kazooie
  ultimate.add(Fighter(
      name: Text("Banjo-Kazooie"),
      fighterImage: Image.asset("lib/assets/ultimate/BanjoImage.png"),
      stockIconImageLocation: "lib/assets/ultimate/BanjoStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.brown,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/banjo_and_kazooie.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Terry
  ultimate.add(Fighter(
      name: Text("Terry"),
      fighterImage: Image.asset("lib/assets/ultimate/TerryImage.png"),
      stockIconImageLocation: "lib/assets/ultimate/TerryStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.red,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/terry.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Byleth
  ultimate.add(Fighter(
      name: Text("Byleth"),
      fighterImage: Image.asset("lib/assets/ultimate/BylethImage.png"),
      stockIconImageLocation: "lib/assets/ultimate/BylethStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.black12,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/byleth.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  return ultimate;
}