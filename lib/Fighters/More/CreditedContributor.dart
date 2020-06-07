
class CreditedContributor {
  //Values
  String contributor;
  String contribution;
  Map<String, String> plugsAndLinks;

  CreditedContributor(
      {this.contributor,
      this.contribution,
      this.plugsAndLinks});


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
