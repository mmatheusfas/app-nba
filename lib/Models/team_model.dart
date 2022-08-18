

class Team {

  String name;
  String code;
  String city;
  String logo;


  Team(this.name, this.code, this.city, this.logo);


  factory Team.fromJson (Map<String, dynamic> json){
    return Team(
      json["name"], 
      json["code"], 
      json["city"], 
      json["logo"]
      );
  }
  
}