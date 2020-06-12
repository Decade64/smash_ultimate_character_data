import 'package:flutter/material.dart';
import 'package:smashultimatecharacterdata/Fighters/AllFighters.dart';
import 'package:smashultimatecharacterdata/Fighters/FighterDefinition.dart';
import 'package:smashultimatecharacterdata/Views/Fancys/character_view_fancys.dart';

class CharacterInfoView extends StatelessWidget{
  final String fighterName;
  Fighter fighter;
  CharacterInfoView(this.fighterName){
    fighter = AllFighters().fighterMap()[fighterName];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fancyCharacterAppBar(),
      body: fancyCharacterViewBody(context),
    );
  }
}