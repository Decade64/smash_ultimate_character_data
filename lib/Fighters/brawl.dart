import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smashultimatecharacterdata/Fighters/More/CreditedContributor.dart';
import 'package:smashultimatecharacterdata/Fighters/More/FighterViews.dart';
import 'FighterDefinition.dart';

List<Fighter> brawl(){
  List<Fighter> brawl = [];
  //Meta Knight
  brawl.add(Fighter(
    name: Text("Meta Knight"),
    fighterImage: Image.asset("lib/assets/brawl/MetaKnightImage.png"),
    stockIconImageLocation: "lib/assets/brawl/MetaKnightStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.blue,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/meta_knight.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [],
    contributors: [],
  ));
  //Pit
  brawl.add(Fighter(
    name: Text("Pit and Dark Pit"),
    fighterImage: Image.asset("lib/assets/brawl/PitImage.png"),
    stockIconImageLocation: "lib/assets/brawl/PitStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.grey,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/pit.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [],
    contributors: [],
  ));
  //ZSS
  brawl.add(Fighter(
    name: Text("Zero Suit Samus"),
    fighterImage: Image.asset("lib/assets/brawl/ZSSImage.png"),
    stockIconImageLocation: "lib/assets/brawl/ZSSStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.blue,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/zero_suit_samus.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [],
    contributors: [],
  ));
  //Wario
  brawl.add(Fighter(
    name: Text("Wario"),
    fighterImage: Image.asset("lib/assets/brawl/WarioImage.png"),
    stockIconImageLocation: "lib/assets/brawl/WarioStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.yellow,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/wario.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [],
    contributors: [],
  ));
  //Snake
  brawl.add(Fighter(
    name: Text("Snake"),
    fighterImage: Image.asset("lib/assets/brawl/SnakeImage.png"),
    stockIconImageLocation: "lib/assets/brawl/SnakeStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.blueGrey,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/snake.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [],
    contributors: [],
  ));
  //Ike
  brawl.add(Fighter(
    name: Text("Ike"),
    fighterImage: Image.asset("lib/assets/brawl/IkeImage.png"),
    stockIconImageLocation: "lib/assets/brawl/IkeStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.orangeAccent,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/ike.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [
      youtubeLinkCard("Art of Ike", "youtu.be/c_p-aiD1gTw")
    ],
    contributors: [
      CreditedContributor().izaw()
    ],
  ));
  //Pokemon Trainer
  brawl.add(Fighter(
    name: Text("Pokemon Trainer"),
    fighterImage: Image.asset("lib/assets/brawl/PokémonTrainerImage.png"),
    stockIconImageLocation: "lib/assets/brawl/PTStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.yellow,
    discordLink: "",
    ultimateFrameDataLink: "",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [],
    contributors: [],
  ));
  //Diddy Kong
  brawl.add(Fighter(
    name: Text("Diddy Kong"),
    fighterImage: Image.asset("lib/assets/brawl/DiddyKongImage.png"),
    stockIconImageLocation: "lib/assets/brawl/DiddyKongStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.brown,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/diddy_kong.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [],
    contributors: [],
  ));
  //Lucas
  brawl.add(Fighter(
    name: Text("Lucas"),
    fighterImage: Image.asset("lib/assets/brawl/LucasImage.png"),
    stockIconImageLocation: "lib/assets/brawl/LucasStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.yellow,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/lucas.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [],
    contributors: [],
  ));
  //Sonic
  brawl.add(Fighter(
    name: Text("Sonic"),
    fighterImage: Image.asset("lib/assets/brawl/SonicImage.png"),
    stockIconImageLocation: "lib/assets/brawl/SonicStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.blue,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/sonic.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [],
    contributors: [],
  ));
  //King Dedede
  brawl.add(Fighter(
    name: Text("King Dedede"),
    fighterImage: Image.asset("lib/assets/brawl/KingDededeImage.png"),
    stockIconImageLocation: "lib/assets/brawl/KingDededeStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.orange,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/king_dedede.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [],
    contributors: [],
  ));
  //Olimar
  brawl.add(Fighter(
    name: Text("Olimar"),
    fighterImage: Image.asset("lib/assets/brawl/OlimarImage.png"),
    stockIconImageLocation: "lib/assets/brawl/OlimarStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.yellow,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/olimar.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [],
    contributors: [],
  ));
  //Lucario
  brawl.add(Fighter(
    name: Text("Lucario"),
    fighterImage: Image.asset("lib/assets/brawl/LucarioImage.png"),
    stockIconImageLocation: "lib/assets/brawl/LucarioStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.blueGrey,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/lucario.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [],
    contributors: [],
  ));
  //ROB
  brawl.add(Fighter(
    name: Text("ROB"),
    fighterImage: Image.asset("lib/assets/brawl/ROBImage.png"),
    stockIconImageLocation: "lib/assets/brawl/ROBStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.grey,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/rob.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [],
    contributors: [],
  ));
  //Toon Link
  brawl.add(Fighter(
    name: Text("Toon Link"),
    fighterImage: Image.asset("lib/assets/brawl/ToonLinkImage.png"),
    stockIconImageLocation: "lib/assets/brawl/ToonLinkStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.green,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/toon_link.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [
      youtubeLinkCard("Art of Toon Link", "youtu.be/YDYO5vVrsk8")
    ],
    contributors: [
      CreditedContributor().izaw()
    ],
  ));
  brawl.add(Fighter(
    name: Text("Wolf"),
    fighterImage: Image.asset("lib/assets/brawl/WolfImage.png"),
    stockIconImageLocation: "lib/assets/brawl/WolfStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.purple,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/wolf.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [
      youtubeLinkCard("Art of Wolf", "youtu.be/Km7MSZU4gTg")
    ],
    contributors: [
      CreditedContributor().izaw()
    ],
  ));
  return brawl;
}