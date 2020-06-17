import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'FighterDefinition.dart';

List<Fighter> melee() {
  List<Fighter> melee;
  melee = [];

  //PeachDaisy
  melee.add(Fighter(
    name: Text("Peach and Daisy"),
    fighterImage: Image.asset("lib/assets/sixFour/PeachImage.png"),
    stockIconImageLocation: "lib/assets/melee/PeachStockImage.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.pinkAccent,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/peach.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [],
    contributors: []
  ));
  //Bowser
  melee.add(Fighter(
      name: Text("Bowser"),
      fighterImage: Image.asset("lib/assets/melee/BowserImage.png"),
      stockIconImageLocation: "lib/assets/melee/BowserStockImage.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.orangeAccent,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/bowser.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //ICS
  melee.add(Fighter(
      name: Text("Ice Climbers"),
      fighterImage: Image.asset("lib/assets/melee/IceClimbersImage.png"),
      stockIconImageLocation: "lib/assets/melee/IceClimbersStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.blue,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/ice_climbers.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Zelda
  melee.add(Fighter(
      name: Text("Zelda"),
      fighterImage: Image.asset("lib/assets/melee/ZeldaImage.png"),
      stockIconImageLocation: "lib/assets/melee/ZeldaStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.white70,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/zelda.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Sheik
  melee.add(Fighter(
      name: Text("Sheik"),
      fighterImage: Image.asset("lib/assets/melee/SheikImage.png"),
      stockIconImageLocation: "lib/assets/melee/SheikStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.indigo,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/zelda.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Dr mario
  melee.add(Fighter(
      name: Text("Dr.Mario"),
      fighterImage: Image.asset("lib/assets/melee/DrMarioImage.png"),
      stockIconImageLocation: "lib/assets/melee/DrMarioStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.white70,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/dr_mario.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Pichu
  melee.add(Fighter(
      name: Text("Pichu"),
      fighterImage: Image.asset("lib/assets/melee/PichuImage.png"),
      stockIconImageLocation: "lib/assets/melee/PichuStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.yellow,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/pichu.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Falco
  melee.add(Fighter(
      name: Text("Falco"),
      fighterImage: Image.asset("lib/assets/melee/FalcoImage.png"),
      stockIconImageLocation: "lib/assets/melee/FalcoStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.blue,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/falco.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Marth
  melee.add(Fighter(
      name: Text("Marth"),
      fighterImage: Image.asset("lib/assets/melee/MarthImage.png"),
      stockIconImageLocation: "lib/assets/melee/MarthStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.blue,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/marth.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Lucina
  melee.add(Fighter(
      name: Text("Lucina"),
      fighterImage: Image.asset("lib/assets/melee/LucinaImage.png"),
      stockIconImageLocation: "lib/assets/melee/LucinaStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.blue,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/lucina.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Young Link
  melee.add(Fighter(
      name: Text("Young Link"),
      fighterImage: Image.asset("lib/assets/melee/YoungLinkImage.png"),
      stockIconImageLocation: "lib/assets/melee/YoungLinkStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.green,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/young_link.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Gannon
  melee.add(Fighter(
      name: Text("Ganondorf"),
      fighterImage: Image.asset("lib/assets/melee/GanondorfImage.png"),
      stockIconImageLocation: "lib/assets/melee/GannondorfStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.grey,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/ganondorf.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Mewtwo
  melee.add(Fighter(
      name: Text("Mewtwo"),
      fighterImage: Image.asset("lib/assets/melee/MewtwoImage.png"),
      stockIconImageLocation: "lib/assets/melee/MewtwoStockICon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.purple,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/mewtwo.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Roy
  melee.add(Fighter(
      name: Text("Roy"),
      fighterImage: Image.asset("lib/assets/melee/RoyImage.png"),
      stockIconImageLocation: "lib/assets/melee/RoyStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.red,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/roy.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Chrom
  melee.add(Fighter(
      name: Text("Chrom"),
      fighterImage: Image.asset("lib/assets/melee/ChromImage.png"),
      stockIconImageLocation: "lib/assets/melee/ChromStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.indigoAccent,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/chrom.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  //Game and watch
  melee.add(Fighter(
      name: Text("Game and Watch"),
      fighterImage: Image.asset("lib/assets/melee/GameAndWatchImage.png"),
      stockIconImageLocation: "lib/assets/melee/GameAndWatchStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.black,
      discordLink: "",
      ultimateFrameDataLink: "https://ultimateframedata.com/mr_game_and_watch.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  return melee;
}