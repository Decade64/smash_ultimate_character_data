import 'FighterDefinition.dart';
import '64.dart';
import 'melee.dart';

class AllFighters {
  List<Fighter> fighterData = List<Fighter>();
  List<Fighter> finalFighterData;
  AllFighters(){
    this.finalFighterData = fighters();
  }
   List<Fighter> fighters(){
     //64
     for(Fighter fighter in sixtyFour()){
       fighterData.add(fighter);
     }
     //Melee
     for (Fighter fighter in melee()){
       fighterData.add(fighter);
     }
    return fighterData;
  }
  Map<String,Fighter> fighterMap(){
    Map<String,Fighter> fighterMap;
    fighterMap = {};
    fighters().forEach((fighter) {
      fighterMap[fighter.name.data] = fighter;
    });
    return fighterMap;
  }
}