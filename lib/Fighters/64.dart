import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smashultimatecharacterdata/Fighters/More/FighterViews.dart';
import 'package:url_launcher/url_launcher.dart';
import 'FighterDefinition.dart';
import 'More/CreditedContributor.dart';

List<Fighter> sixtyFour() {
  List<Fighter> sixFour;
  sixFour = [];
  //Mario
  sixFour.add(Fighter(
      name: Text("Mario"),
      barColor: Colors.red,
      discordLink: "https://discord.com/invite/M3cd4Sq",
      ultimateFrameDataLink: "https://ultimateframedata.com/mario.php",
      fighterImage: Image.asset('lib/assets/Mario_(1).png'),
      stockIconImageLocation: 'lib/assets/mario_stock.png',
      additionalWidgets: [
        //Art of
        FancyContainerCardListView([
          ListTile(
            title: Text("Art of Mario", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
          ),
          ListTile(
            title: Text("Credits to Izaw", textAlign: TextAlign.center,),
          ),
          IconButton(icon: Icon(Icons.launch, color: Colors.blue,),
          onPressed: (){
            launch("https://youtu.be/vKBM9B8CEBw");
          },)
        ]),
        //Combos
        Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Card(
                  elevation: 15,
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        title: Text(
                          "Combos",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                      ListTile(
                          title: Text(
                            "Dunk Combo (Very important)",
                            textAlign: TextAlign.center,
                          ),
                          subtitle: Text(
                              "Low/Mid \n\nDown Throw>Uair>landing FastFall Uair>Fair** (Kill confirm by the ledge)\n")),
                      ListTile(
                        title: Text(
                          "Starting (0% - 20%)",
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                            "\nUp throw>Full hop Dair>potential F/B/Uair depending on knockback and side they’re sent\n\nLanding Bair/Nair>Turnaround grab into up throw\n\n"
                            "Dair>F/B/Uair depending on knockback and side they’re sent.\n\n"
                            "Up throw>Uair/s/\n"),
                      ),
                      ListTile(
                        title: Text(
                          "Low/Mid-Mid(30% - 50%)",
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                            "\nLanding bair/nair>grab/imagination\n\nUp throw>Uairs\n\nRising Uair>Imagination\n\nDown throw>Uair>FFNair/Uair>Uairs/Imagination\n\nDown tilt (more so after 40)>Uair/s/Imagination\n\n"),
                      ),
                      ListTile(
                        title: Text("Mid-Mid/High (60-70)"),
                        subtitle: Text(
                            "\nD Throw/tilt>Uair (May not work with di out)\n\nD Throw/tilt>Bair"),
                      ),
                      ListTile(
                        title: Text("High (80+)"),
                        subtitle: Text(
                            "\nD Throw/tilt>Bair (DOES NOT WORK WITH DI OUT)"),
                      ),
                      ListTile(
                        title: Text(
                          "Below is a link to the original document",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      IconButton(
                        padding: EdgeInsets.all(30),
                        icon: Icon(
                          Icons.import_contacts,
                          color: Colors.blue,
                        ),
                        onPressed: () {
                          launch(
                              "https://docs.google.com/document/d/12UKVXLgD8_RlcQt_MYRDIbduZO7ua-Rim_Fx-YkP5iQ/edit?usp=sharing");
                        },
                      )
                    ],
                  )),
            ),
          ),
        )
      ],
      stockIconGraphOffset: Offset(0, 0),
      contributors: [
        CreditedContributor().izaw(),
        CreditedContributor(
            contributor: "The LMAN",
            contribution: "FAQ document",
            plugsAndLinks: {"Twitter": "https://twitter.com/TheLManYT"}),
        //Ben Frosty
        CreditedContributor(
            contributor: "Ben Frosty",
            contribution: "FAQ document",
            plugsAndLinks: {
              "Twitter": "https://twitter.com/benfrosty340",
              "Twitch": "https://www.twitch.tv/benfrosty340"
            }),
        //Bananafish
        CreditedContributor(
            contributor: "Bananafish",
            contribution: "FAQ document",
            plugsAndLinks: {"Twitter": "https://twitter.com/bananafish_o7"}),
      ],
      tacticsTitle: "About Mario",
      tacticsBody:
          """
Mario is a flexible character perfectly suited for beginners. He has simple mechanics, but they can be optimized to perfection. Mario relies on combos using his great frame data and air speed to build up damage, and has many tools to close out stocks quickly. Mario is a great character to pick up if you're looking for flexibility, fun combos, and consistency.          
      """));

  //Donkey Kong
  sixFour.add(Fighter(
      name: Text("Donkey Kong"),
      barColor: Colors.brown,
      discordLink: "https://discord.com/invite/qMzMf8g",
      ultimateFrameDataLink: "https://ultimateframedata.com/donkey_kong.php",
      fighterImage: Image.asset('lib/assets/Donkey_Kong_SSBU.png'),
      stockIconImageLocation: 'lib/assets/DK_stock.png',
      additionalWidgets: [
        //
        Container(
            padding: const EdgeInsets.all(15),
            child: Center(
                child: Card(
                    elevation: 15,
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(7),
                      shrinkWrap: true,
                      children: [
                        ListTile(
                          title: Text(
                            "V7.0.0 matchup chart, made by iDK\nTap to enlarge/close",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            return ListTile(
                              title: Hero(
                                  tag: "dkMatchup",
                                  child: Image.asset(
                                      "lib/assets/DK Matchup Graph.png")),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            pictureInfographicViewer(
                                                AssetImage(
                                                    "lib/assets/DK Matchup Graph.png"),
                                                "dkMatchup")));
                              },
                            );
                          },
                        )
                      ],
                    )))),
        Container(
            child: Center(
                child: Card(
                    elevation: 15,
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.only(top: 15),
                          title: Text(
                            "V7.0.0 Secondary Character Reccomendations made by respecc\nTap to enlarge/close",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "This chart takes DK's 5 worst matchups in mind, so if you want a secondary to use ONLY if the matchup is from the -2 section in the list above, this chart will guide you",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Builder(
                          builder: (context) {
                            return ListTile(
                              title: Hero(
                                  tag: "dkSecondaries",
                                  child: Image.asset(
                                      "lib/assets/DK secondary reccomendations.jpg")),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            pictureInfographicViewer(
                                                AssetImage(
                                                    "lib/assets/DK secondary reccomendations.jpg"),
                                                "dkSecondaries")));
                              },
                            );
                          },
                        )
                      ],
                    )))),
        Container(
          child: Center(
            child: Card(
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Text(
                      "pDKO Chart",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ListTile(
                    title: Text("""Executed as follows;
- Jump\n
- Up throw just before landing on a platform\n
- After cargo up throw cooldown, you should be landed on the platform\n
- Jump double jump u-air"""),
                  ),
                  Builder(
                    builder: (context) {
                      return ListTile(
                        title: Hero(
                            tag: "dkPdko",
                            child:
                                Image.asset("lib/assets/pDKO-Chart-light.png")),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pictureInfographicViewer(
                                      AssetImage(
                                          "lib/assets/pDKO-Chart-light.png"),
                                      "dkPdko")));
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        )
      ],
      stockIconGraphOffset: Offset(60, 50),
      contributors: [
        CreditedContributor(
            contributor: "respecc",
            contribution: "DK Secondary Chart",
            plugsAndLinks: {}),
        CreditedContributor(
            contributor: "iDK",
            contribution: "DK matchup chart",
            plugsAndLinks: {"Twitter": "https://twitter.com/kevinkaywho"})
      ],
      tacticsTitle: "About DK",
      tacticsBody:"""
Similar to most heavies, Donkey Kong is a bait and punish character. Unlike othe heavies, he is also a half grappler. Donkey Kong's good throw combos, cargo throw, and his powerful pDKO kill confirm make his grab one of the most deadliest in the game. Donkey Kong has great aerial moves and hitboxes which can also be used to his advantage. Donkey Kong is a very fun character suited best for players who like to grab.      
      """
  ));

  //Link
  sixFour.add(Fighter(
    name: Text("Link"),
    fighterImage: Image.asset("lib/assets/sixFour/LinkImage.png"),
    stockIconImageLocation: "lib/assets/sixFour/LinkStockIcon.png",
    stockIconGraphOffset: Offset(-50, 15),
    barColor: Colors.blue,
    discordLink: "http://discord.gg/LinkisSick",
    ultimateFrameDataLink: "https://ultimateframedata.com/link.php",
    tacticsTitle: "About Link",
    tacticsBody:"""
Link has a powerful moveset based around projectiles, but instead of zoning out the opponent, Link's goal is to play slow and defensive, and capitalize on the opponents mistakes. The remote bomb is one of Link's best defensive and offensive tools, allowing Link to completely block off part of the map with one item. It can also be used to recover in a pinch. Link's slow, methodical approach makes him an excellent character for players who enjoy keeping their distance and whittling down their opponents until it is time to strike.
    """,
    contributors: [
      CreditedContributor().izaw(),
      CreditedContributor(
          contributor: "Lt",
          contribution: "iZAC Tutorial",
          plugsAndLinks: {
            "YouTube":
                "https://www.youtube.com/channel/UCE42071bRukvGC8OLVffCmg"
          })
    ],
    additionalWidgets: [
      //iZAC
      Container(
        child: Center(
          child: Card(
            elevation: 15,
            margin: EdgeInsets.all(15),
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text(
                    "ZAC/iZAC",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  title: Text(
                    "The ZAC and iZAC techniques (Instant Z Drop Areal Catch) in smash ultimate are used to preform areal attacks while holding an item, for link this is especially useful as this allows him to preform areals while still holding his bomb, which can open a lot of possibilities both in the neutral and for combos, press the icon below for a tutorial.",
                    textAlign: TextAlign.justify,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Credits to Lt",
                    textAlign: TextAlign.center,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.launch,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    openYoutube("youtu.be/MWKODmOAIy8");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      //Art of
      Container(
        child: Center(
          child: Card(
            elevation: 15,
            margin: EdgeInsets.all(15),
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text(
                    "Art of Link",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Credits to Izaw",
                    textAlign: TextAlign.center,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.launch,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    openYoutube("www.youtube.com/watch?v=VlKkv5HSYVA");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      //How to use the remote bomb
      Container(
        child: Center(
          child: Card(
              elevation: 15,
              margin: EdgeInsets.all(15),
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Text(
                      "How to use the remote bomb\nCredits to Izaw",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Center(
                        child: ListTile(
                          title: Text(
                            "Part 1",
                            textAlign: TextAlign.center,
                          ),
                          subtitle: IconButton(
                            icon: Icon(
                              Icons.launch,
                              color: Colors.blue,
                            ),
                            onPressed: () {
                              openYoutube(
                                  "www.youtube.com/watch?v=lzjtMODOd2g");
                            },
                          ),
                        ),
                      ),
                      Center(
                        child: ListTile(
                          title: Text(
                            "Part 2",
                            textAlign: TextAlign.center,
                          ),
                          subtitle: IconButton(
                            icon: Icon(
                              Icons.launch,
                              color: Colors.blue,
                            ),
                            onPressed: () {
                              openYoutube(
                                  "www.youtube.com/watch?v=YA9SwIKnyl0");
                            },
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ),
      )
    ],
  ));

  //Samus
  sixFour.add(Fighter(
      name: Text("Samus/Dark Samus"),
      fighterImage: Image.asset("lib/assets/sixFour/SamusImage.png"),
      stockIconImageLocation: "lib/assets/sixFour/SamusStockIcon.png",
      stockIconGraphOffset: Offset(-25, 60),
      barColor: Colors.orange,
      discordLink: "https://discord.gg/b69G8H6",
      ultimateFrameDataLink: "https://ultimateframedata.com/samus.php",
      contributors: [
        CreditedContributor(
            contributor: "Shadow9",
            contribution: "Samus Logbook",
            plugsAndLinks: {"Twitter": "https://twitter.com/TLI_Shadow9"})
      ],
      tacticsTitle: "About Samus",
      tacticsBody:"""
Samus and Dark Samus are projectile based characters who are good at both zoning and bait and punish style gameplay. Samus' powerful charge shot allows for Samus to keep a very powerful attack loaded in case the opponent makes a mistake. Samus can use her arsenal of combos, projectiles, and her tether grab to remove all of her opponents options. Samus and Dark Samus are great characters for those who like projectile characters, but don't want to lack the combos that other characters have.
      """,
      additionalWidgets: [
        //Logbook link
        FancyContainerCardListView([
          ListTile(
            title: Text(
              "Logbook, made by Shadow9",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            title: Text(
              "Link below",
              textAlign: TextAlign.center,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.launch,
              color: Colors.blue,
            ),
            onPressed: () {
              launch(
                  "https://docs.google.com/document/d/13Rf6yTapEkDLbgZ_ymRWE7086HD7W6TaVUliGlYCPJs/edit?usp=sharing");
            },
          )
        ]),
        FancyContainerCardListView([
          ListTile(
            title: Text(
              "Highlighted advice from discord users",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            title: Text(
                "- Don't use dthrow fair at 0\n\n- D throw uair uair up b is a free 48 at 0 if u can learn it, its tight tho for the first up air\n\n- If you're fighting samus always DI dthrow away or down and away"),
          )
        ])
      ]));

  //Yoshi
  sixFour.add(Fighter(
    name: Text("Yoshi"),
    fighterImage: Image.asset("lib/assets/sixFour/YoshiImage.png"),
    stockIconImageLocation: "lib/assets/sixFour/YoshiStockImage.png",
    stockIconGraphOffset: Offset(17, 17),
    barColor: Colors.green,
    discordLink: "https://discordapp.com/invite/QKanWPU",
    ultimateFrameDataLink: "https://ultimateframedata.com/yoshi.php",
    tacticsTitle: "About Yoshi",
    tacticsBody: """
Yoshi is a fighter with basic moves, but many unique attributes. He has insane combo breaking potential, especially with his armor on his double jump. He is heavy, but very floaty. His high jump height and fast air speed allow him to traverse the arena to use his powerful attacks in an instant. His forward and and up tilt are very powerful to rack up percent with. Yoshi's down tilt and neutral air are used to get tech chases, which Yoshi gets a lot of value from. Yoshi is perfect for those looking for the perfect mix of agility and defense.
    """,
    contributors: [
      //Izaw
      CreditedContributor().izaw(),
      //Timmy
      CreditedContributor(
          contributor: "Timmy",
          contribution: "Common Mistakes Content",
          plugsAndLinks: {
            "Twitter": "https://twitter.com/TalesOfTimmyT",
            "YouTube": "https://www.youtube.com/user/MrTimtendo"
          })
    ],
    additionalWidgets: [
      //Art of Yoshi
      FancyContainerCardListView([
        ListTile(
          title: Text(
            "Art of Yoshi",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
        ListTile(
          title: Text("Credits to Izaw",textAlign: TextAlign.center,),
        ),
        Builder(
            builder: (context){
              return IconButton(
                icon: Icon(Icons.launch, color: Colors.blue,),
                onPressed: (){
                  openYoutube("youtu.be/zbel6sAHzDM");
                },
              );
            })
      ]),
      //Common mistakes
      FancyContainerCardListView([
        ListTile(
          title: Text(
            "Common Mistakes, made by Timmy",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
        Builder(
          builder: (context) {
            String mistakes = """
Here's some common mistakes I can think of I'm trying to fix too: 

- Overusing Fair: 

Dont get me wrong, Fair is def a great aerial. But it's a F16 option where we extend our hurtbox (including on landing too). It doesn't AC in a SH either. It's also unsafe on hit, a bit below 20ish and spamming Fair will get you swatted away, parried, whiffed punished or pivot grabbed. This also includes for edgeguarding and landing. Try to fade back and use Fair low to ground to keep it safe, approach with Egg Lay if they expect Fair or even use landing Nair/Uair > shield the OoS option (esp. notable vs chars with quicker OoS options, such as Bowser's F6 Up B - Fair is at best -7. Nair/Uair at best -3).

- Dair/Nair/Down B/jump immediately outta disadv./returning from ledge:

Dair is a F16 option that is NOT a disjoint, so while it's big damage on all hits, we don't wanna trade with this. Nair can trade decently usually, but it's very short ranged and very telegraphed. Down B mid air is also telegraphed easily with a lotta landing lag. Jump propels you higher but getting hit again after once armor is gone is no good. Realize you don't always need to try to hit your opponent - the focus should be landing safely. Either go for Egg Lay to anticipate a shield (say after a Fox UTilt as an example), or just drift away from the opponent/go to ledge if you really cant contest. You can use a Uair if you wanna escape tumble the quickest and even as a surprise combo breaker since you can retain full drift. Even autocanceling start up of aerials can be a fantastic mix up.

- Not keeping track of Egg Boosts when recovering/misplacing them predictably: 

Eggs get 3 boosts in mid air. The first cant snap to ledge so you might fire too soon and go above it, leaving you vulnerable. It'll increase if you fire at the apex of your jump too. Realize you dont need to always fire after the apex of your jump, and remember that you have to LAND ONSTAGE to regain your boosts (grabbing ledge doesn't refresh). Mix up # of Eggs used, airdodges, saving jump or using it or some combination.

- Using grab release / not using his grab enough:

Ok so yeah, we have a slow grab and our throws aren't anything to write home about... right? Well, every bit of damage counts. See the #yoshi_faq for why GR isnt a thing/mix up (but again, basically itll lose to shield + reaction and you just reset neutral instead of putting yourself in adv.) onstage. But... damage is damage. 2-3 pummels and a throw is about 10-15% total. Its brilliant for ledge traps. Our grab lingers too, and pivot grab is an absolute godsend vs swords. You can even shield grab Mario's Smashes which... not everyone can do. Grabbing takes some conditioning (and for Yoshi, conditioning is 10000% essential for his lack of a strong enough throw punish/burst option) 

- Overextending:

This is rather broad - But at low percents, our rising aerials are unsafe after hitting, so keep your distance after hitting below 20ish UNLESS you are sure you can condition them accordingly for another follow up (like if they shield after you do a rising FH Nair you can Egg Lay upon landing). Going for another jump Uair when the ladder isnt true can put you in a worse position if missed. Yoshi can also get footstooled if he overextend going too low, so pay attention to your height and when you jump too. Dont EVER jump if your opponent is directly above you and you're offstage. It's ok to take risks (since our adv. state IS great), but dont be predictable nor greedy.
            """;
            return ListTile(
              title: IconButton(
                icon: Icon(
                  Icons.comment,
                  color: Colors.blue,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => textInfoView(
                              Colors.green,
                              mistakes,
                              Text(
                                "Common Yoshi Mistakes",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 30),
                              )
                          )
                      )
                  );
                },
              ),
            );
          },
        ),
      ]),
      FancyContainerCardListView([
        ListTile(
          title: Text("Egg Management",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
        ),
        Builder(
          builder: (context){
            String egg = """
Controlling Eggs: Eggs set up for a bunch of combos, conditioning tool and function as his recovery. It's important to note it isn't a zoning projectile; but rather a combo starting projectile. They are way too laggy to constant fire, with a blindspot and some start up on top of them losing to basically any non-transcendent hitbox so it can be swatted out relatively easily. (Transcendent is stuff like Wolf's Lasers, where no other hitbox interacts with it)

Managing Eggs to catch jumps, cover ledge/tech options and set up combos are key with him. 

It's also important to know how to use the 3 Egg Boosts smartly, and mix up his recovery together with his jump, airdodge and Down B with various combinations and distances.

A common error is accidentally misclicking Side B upon firing Eggs. When you want to fire one, ALWAYS start your analog stick at 12 o'clock, then roll your stick to where you want to aim. The other gameplay error is always firing one out of disadv.  and getting caught on start up for it. It takes nearly a second to use one.
            """;
            return ListTile(
              title: IconButton(
                icon: Icon(Icons.comment,color: Colors.blue,),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => textInfoView(Colors.green,egg, Text("Egg Management",textAlign: TextAlign.center, style: TextStyle(fontSize: 20),))));
                },
              ),
            );
          },
        )
      ])
    ],
  ));
  sixFour.add(Fighter(
    name: Text("Kirby"),
    fighterImage: Image.asset("lib/assets/sixFour/KirbyImage.png"),
    stockIconImageLocation: "lib/assets/sixFour/KirbyStockImage.png",
    stockIconGraphOffset: Offset(25,25),
    barColor: Colors.pink,
    discordLink: "https://discord.gg/pNdppAu",
    ultimateFrameDataLink: "https://ultimateframedata.com/kirby.php",
    tacticsTitle: "About Kirby",
    tacticsBody: """
Kirby is a character who can switch his playstyle to whatever he needs to beat his opponent. Whether this means low profiling and playing rushdown or zoning his opponent out with their own projectiles along with his own up special, Kirby has an answer for your character. His low profiling and great frame data on his tilts and aerials allows for quick and oppressive attacks. Kirby is set back by his light and floaty style and his lack of air mobility. Kirby is perfect for those who are willing to adapt to their opponent and change how they play to fit their needs. 
    """,
    additionalWidgets: [
      FancyContainerCardListView([
        ListTile(title: Text("Stages",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),),
        Builder(
          builder: (context){
            return IconButton(icon: Icon(Icons.launch,color: Colors.blue,),
            onPressed: (){
              List<StagePreference> stages = [
                StagePreference(Stage.bf, StageGoodOrBad.bad,"","" ),
                StagePreference(Stage.ys, StageGoodOrBad.bad, "","" ),
                StagePreference(Stage.fd, StageGoodOrBad.good, "","" ),
                StagePreference(Stage.sv, StageGoodOrBad.good, "","" ),
                StagePreference(Stage.ps2, StageGoodOrBad.neutral, "","" ),
              ];
              Navigator.push(context, MaterialPageRoute(builder: (context) => stagesInfoView(Colors.pink, stages)));
            },);
          },
        )
      ]),
      FancyContainerCardListView([
        ListTile(title: Text("Kirby guide, by Skillody", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),),
        IconButton(icon: Icon(Icons.launch,color: Colors.blue,),
        onPressed: (){
          openYoutube("youtu.be/vf0TEtwAhwQ");
        },)
      ]),
      FancyContainerCardListView([
        ListTile(title: Text("Kirby Guide playlist",textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),),
        IconButton(icon: Icon(Icons.launch, color: Colors.blue,),
        onPressed: (){
          openYoutube("www.youtube.com/playlist?list=PLAvm4J_QjviQLDcy2eP1WceV2ekhU2ETm");
        },)
      ]),
      FancyContainerCardListView([
        ListTile(title: Text("Kirby Matchup Chart\nTap to enlarge",textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),),
        Builder(
          builder: (context) {
            return ListTile(
              title: Hero(
                  tag: "kirbytMatchup",
                  child: Image.asset(
                      "lib/assets/sixFour/Kirby Matchup Chart.jpg")),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            pictureInfographicViewer(
                                AssetImage(
                                    "lib/assets/sixFour/Kirby Matchup Chart.jpg"),
                                "kirbyMatchup")));
              },
            );
          },
        )
      ]),
      FancyContainerCardListView([
        ListTile(title: Text("Common Mistakes\nBy IBZ",textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),),
        Builder(
          builder: (context){
            String mistakes = """
- Jumping a lot. Kirby is a ground fighter. His ground speed is pretty good and his frame data on his tilts are great. His airspeed however, is very bad. So jumping a lot in neutral will leave you vulnerable and easy to hit.

- Using d-air. This is a very common habit among less experienced players. D-air has some of the worst frame data and reward on hit out of any aerial in the game. Despite this, many low level kirbys spam it in neutral and disadvantage. Kirby players should know that d-air is usually only good for edgeguarding and within combos. 

- Playing aggressively. Kirby might have some safe pokes, but his moves aren't safe enough for him to just run in and mash on his opponent. Also, approaching characters with long range is quite difficult for Kirby, so it's usually best for him to bait an approach from his opponent instead.

- Not snapping to the ledge properly with final cutter (up special). FC can snap to the ledge on the way up without going above the ledge if spaced correctly. This protects Kirby from counters, water attacks and a lot of smash attacks that would usually trade. Many Kirbys don't know how to space FC and leave themselves more vulnerable than they should be. The video below shows how to snap to the ledge properly with FC
          """;
            return ListTile(
              title: Icon(Icons.comment,color: Colors.blue,),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => textInfoView(Colors.pink, mistakes, Text("Common Mistakes",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),))));
              },
            );
          },
        )
      ])
    ],
    contributors: [
      //IBZ
      CreditedContributor(
        contributor: "IBZ",
        contribution: "Playstyle Paragraph/Graph \nCommon Mistakes \nPreferred Stages",
        plugsAndLinks: {
          "Twitter": "https://twitter.com/IBZ_SSB",
          "YouTube": "https://www.youtube.com/channel/UCQNS04WkKo6_n-4aTONyX9w"
        }
      ),
      CreditedContributor(
        contributor: "Sillody",
        contribution: "Kirby Guides",
        plugsAndLinks: {
          "Twitter": "https://twitter.com/Sillody",
          "YouTube": "https://www.youtube.com/channel/UCFxFjgJpsbu4yX0kj0siNtQ"
        }
      ),
      CreditedContributor(
        contributor: "SK",
        contribution: "Kirby Guides",
        plugsAndLinks: {
          "YouTube": "https://www.youtube.com/channel/UCtT0PnRVXo0qIi-Tsm-wncQ",
          "Twitter": "https://twitter.com/DatDereKirby"
        }
      )
    ]
  ));
  //Fox
  sixFour.add(Fighter(
    name: Text("Fox"),
    fighterImage: Image.asset("lib/assets/sixFour/FoxImage.png"),
    stockIconImageLocation: "lib/assets/sixFour/FoxStockIcon.png",
    stockIconGraphOffset: Offset(0,-57),
    barColor: Colors.brown,
    discordLink: "https://www.smashcords.com/s5fox",
    ultimateFrameDataLink: "https://ultimateframedata.com/fox.php",
    tacticsTitle: "About Fox",
    tacticsBody: """
Fox is a lightweight character who has an emphasis on speed. His value comes from his quick movement and falling, allowing for Fox to overwhelm his opponents. He has fast and flashy combos which can rack up damage extremely quickly. His neutral air can combo in to his up smash, Fox's most powerful killing tool. Fox can use that and many other moves to round up stocks in a way that many other fighters can't. Fox is recommended for those who value precision and speed in a character.
    """,
    additionalWidgets: [
      FancyContainerCardListView([
        ListTile(title: Text("Fox guide, by LarryLurr",textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),),
        IconButton(icon: Icon(Icons.launch, color: Colors.blue,),
          onPressed: (){
          openYoutube("www.youtube.com/watch?v=VQCDtwUJCRA");
          },)
      ])
    ],
    contributors: [
      CreditedContributor(
        contributor: "Larry Lurr",
        contribution: "Fox Guide",
        plugsAndLinks: {
          "YouTube" : "https://www.youtube.com/channel/UCTc6QUhdAc-yU99rpDxlWrw",
          "Twitter" : "https://twitter.com/LarryLurr",
          "Twitch" : "https://www.twitch.tv/larrylurr"
        }
      )
    ],
  ));
  //Pikachu
  sixFour.add(Fighter(
    name: Text("Pikachu"),
    fighterImage: Image.asset("lib/assets/sixFour/PikachuImage.png"),
    stockIconImageLocation: "lib/assets/sixFour/PikachuStockIcon.png",
    stockIconGraphOffset: Offset(20,-10),
    barColor: Colors.yellow,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/pikachu.php",
    tacticsTitle: "About Pikachu",
    tacticsBody: """
Pikachu is a lightweight character who has many amazing moves and qualities. Most of Pikachu's moveset seamlessly combos into each other, allowing for smooth gameplay. Pikachu's thunder jolt is a super powerful controlling move that forces the opponent to respond uncomfortably. Pikachu's up special is an amazing recovery move that gets him out of disadvantage easily. Pikachu is very light, but packs a punch. Pikachu is recommended for players who want a combo oriented moveset on a powerful character.
    """,
    additionalWidgets: [
      //Pikachu notes
      FancyContainerCardListView([
        ListTile(
          title: Text("Pikachu notes, by Miceaelis",textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
        ),
        IconButton(icon: Icon(Icons.launch,color: Colors.blue,),
        onPressed: (){
          launch("https://docs.google.com/spreadsheets/d/1tfCCrjQ7cowGHh48KX1_sepu2R-eyS23TSM9N2tC9mA/edit?usp=sharing");
        },)
      ]),
      //Art of
      FancyContainerCardListView([
        ListTile(
          title: Text("Art of Pikachu, by Izaw",textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
        ),
        IconButton(
          icon: Icon(Icons.launch,color: Colors.blue,),
          onPressed: (){
            openYoutube("youtu.be/8TEYez3_OFk");
          },
        )
      ])
    ],
    contributors: [
      CreditedContributor().izaw(),
      CreditedContributor(
        contributor: "Miceaelis",
        contribution: "Pikachu notes Google Doc"
      )
    ]
  ));
  //Luigi
  sixFour.add(Fighter(
    name: Text("Luigi"),
    fighterImage: Image.asset("lib/assets/sixFour/LuigiImage.png"),
    stockIconImageLocation:"lib/assets/sixFour/LuigiStockIcon.png",
    stockIconGraphOffset: Offset(50,40),
    barColor: Colors.green,
    discordLink: "https://discord.gg/sx7JWub",
    ultimateFrameDataLink: "https://ultimateframedata.com/luigi.php",
    tacticsTitle: "About Luigi",
    tacticsBody: """
Luigi is very focused on bait and punish, he is a grappler with several 0 -> death combos he can get off of a grab, as listed and in the lab doc, the 'Art of' video goes into much more depth of what he can do exactly so be sure to watch that. 
    """,
    additionalWidgets: [
      FancyContainerCardListView([
        ListTile(
          title: Text("Art of Luigi", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
        ),
        IconButton(icon: Icon(Icons.launch, color: Colors.blue,),
        onPressed: (){
          openYoutube("youtu.be/E7e7fYu2pdM");
        },)
      ]),
      FancyContainerCardListView([
        ListTile(
          title: Text("Luigi lab doc",textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
        ),
        IconButton(icon: Icon(Icons.launch, color: Colors.blue,),
        onPressed: (){
          launch("https://docs.google.com/spreadsheets/d/1G-lcvIuZpb78z6E875iUcygHpCNxxyRHhGJiNxo39T0/edit?usp=sharing");
        },),
      ])
    ],
    contributors: [
      CreditedContributor().izaw()
    ],
  ));
  //Ness
  sixFour.add(Fighter(
    name: Text("Ness"),
    fighterImage: Image.asset("lib/assets/sixFour/NessImage.png"),
    stockIconImageLocation: "lib/assets/sixFour/NessStockIcon.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.red,
    discordLink: "https://discord.gg/E5CgDRx",
    ultimateFrameDataLink: "https://ultimateframedata.com/ness.php",
    tacticsTitle: "About Ness",
    tacticsBody: "Insert paragraph",
    additionalWidgets: [
      FancyContainerCardListView([
        ListTile(title: Text("Beginner ness guide,\n by BestNess",textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),),
        IconButton(icon: Icon(Icons.launch,color: Colors.blue,),
        onPressed: (){
          openYoutube("youtu.be/yiqNdmC4m-g");
        },)
      ]),
      FancyContainerCardListView([
        ListTile(title: Text("Magnet heal precentages spreadsheet",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),),
        IconButton(icon: Icon(Icons.launch,color: Colors.blue,),
        onPressed: (){
          launch("https://docs.google.com/spreadsheets/d/1-_0Lb6rwSEm-A34iz6XXC6oo7cieu7YmLNCajr_EfU8/edit?usp=sharing");
        },)
      ])
    ],
    contributors: [
      CreditedContributor(
        contributor: "BestNess",
        contribution: "Ness Guide",
        plugsAndLinks: {}
      )
    ]
  ));
  //Captain Falcon
  sixFour.add(Fighter(
    name: Text("Captain Falcon"),
    fighterImage: Image.asset("lib/assets/sixFour/CaptainFalconImage.png"),
    stockIconImageLocation: "lib/assets/sixFour/CaptainFalconStockImage.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.blue,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/captain_falcon.php",
    tacticsTitle: "About Captain Falcon",
    tacticsBody: """
Insert paragraph
    """,
    additionalWidgets: [
      FancyContainerCardListView([
        ListTile(title: Text("Falcon Doc",textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),),
        IconButton(icon: Icon(Icons.launch, color: Colors.blue,),
        onPressed: (){
          launch("https://docs.google.com/document/d/1JmqNhcyzn5SN9OmssAIK0GlWQCegE070mSo_WKfaV-g/edit?usp=sharing");
        },)
      ])
    ],
    contributors: []
  ));
  //Jigglypuff
  sixFour.add(Fighter(
    name: Text("Jigglypuff"),
    fighterImage: Image.asset("lib/assets/sixFour/JigglypuffImage.png"),
    stockIconImageLocation: "lib/assets/sixFour/JigglypuffStockImage.png",
    stockIconGraphOffset: Offset(0,0),
    barColor: Colors.pinkAccent,
    discordLink: "",
    ultimateFrameDataLink: "https://ultimateframedata.com/jigglypuff.php",
    tacticsTitle: "",
    tacticsBody: "",
    additionalWidgets: [],
    contributors: []
  ));
  return sixFour;
}