import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smashultimatecharacterdata/Fighters/More/CreditedContributor.dart';
import 'package:smashultimatecharacterdata/Fighters/More/FighterViews.dart';
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
    discordLink: "https://smashcords.com/s5peach",
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
      discordLink: "https://discord.com/invite/0hwgnNR34wz6cSgX",
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
      discordLink: "https://discord.com/invite/6ha6HVF",
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
      discordLink: "https://discord.com/invite/FTw5cVD",
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
      discordLink: "https://discord.com/invite/MSbMHrY",
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
      discordLink: "https://discord.com/invite/pNk9UzP",
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
      discordLink: "https://discord.com/invite/RgcFwQB",
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
      discordLink: "https://discord.com/invite/HptPZcT",
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
      discordLink: "https://discord.com/invite/0bQ68KVbo2Pt5ISy",
      ultimateFrameDataLink: "https://ultimateframedata.com/marth.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [
        youtubeLinkCard("Art of Marth", "youtu.be/WBTHnHqh3qk")
      ],
      contributors: [
        CreditedContributor().izaw()
      ]
  ));
  //Lucina
  melee.add(Fighter(
      name: Text("Lucina"),
      fighterImage: Image.asset("lib/assets/melee/LucinaImage.png"),
      stockIconImageLocation: "lib/assets/melee/LucinaStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.blue,
      discordLink: "https://discord.com/invite/0bQ68KVbo2Pt5ISy",
      ultimateFrameDataLink: "https://ultimateframedata.com/lucina.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [
        youtubeLinkCard("Art of Lucina", "youtu.be/WBTHnHqh3qk")
      ],
      contributors: [
        CreditedContributor().izaw()
      ]
  ));
  //Young Link
  melee.add(Fighter(
      name: Text("Young Link"),
      fighterImage: Image.asset("lib/assets/melee/YoungLinkImage.png"),
      stockIconImageLocation: "lib/assets/melee/YoungLinkStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.green,
      discordLink: "https://discord.com/invite/zxC8Vzr",
      ultimateFrameDataLink: "https://ultimateframedata.com/young_link.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [
        youtubeLinkCard("Art of Young Link", "youtu.be/WSep92_Z4CU")
      ],
      contributors: [
        CreditedContributor().izaw()
      ]
  ));
  //Gannon
  melee.add(Fighter(
      name: Text("Ganondorf"),
      fighterImage: Image.asset("lib/assets/melee/GanondorfImage.png"),
      stockIconImageLocation: "lib/assets/melee/GannondorfStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.grey,
      discordLink: "https://discord.com/invite/qhtPMHY",
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
      discordLink: "https://discord.com/invite/AUVSYqb",
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
      discordLink: "https://discord.com/invite/dgJrPSK",
      ultimateFrameDataLink: "https://ultimateframedata.com/roy.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [
        youtubeLinkCard("Art of Roy", "youtu.be/Km7MSZU4gTg")
      ],
      contributors: [
        CreditedContributor().izaw()
      ]
  ));
  //Chrom
  melee.add(Fighter(
      name: Text("Chrom"),
      fighterImage: Image.asset("lib/assets/melee/ChromImage.png"),
      stockIconImageLocation: "lib/assets/melee/ChromStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.indigoAccent,
      discordLink: "https://discord.com/invite/dgJrPSK",
      ultimateFrameDataLink: "https://ultimateframedata.com/chrom.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [
        youtubeLinkCard("Art of Chrom", "youtu.be/fn0v1UUpI18")
      ],
      contributors: [
        CreditedContributor().izaw()
      ]
  ));
  //Game and watch
  melee.add(Fighter(
      name: Text("Game and Watch"),
      fighterImage: Image.asset("lib/assets/melee/GameAndWatchImage.png"),
      stockIconImageLocation: "lib/assets/melee/GameAndWatchStockIcon.png",
      stockIconGraphOffset: Offset(0,0),
      barColor: Colors.black,
      discordLink: "https://discord.com/invite/fzWuqZ8",
      ultimateFrameDataLink: "https://ultimateframedata.com/mr_game_and_watch.php",
      tacticsTitle: "",
      tacticsBody: "",
      additionalWidgets: [],
      contributors: []
  ));
  return melee;
}