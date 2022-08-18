import 'dart:convert';
import 'package:app_nba/Models/team_model.dart';
import 'package:http/http.dart' as http;


class Api {

  String url = "https://api-nba-v1.p.rapidapi.com/teams?conference=";

  Future <List<Team>> getApi (String conference) async{


    url = url + conference;
    var uri = Uri.parse(url);

     var response = await http.get(uri, headers:{
      'X-RapidAPI-Host': 'api-nba-v1.p.rapidapi.com',
      'X-RapidAPI-Key': '4af9c3cc0dmshe8648c83745c443p1f0d08jsnafb0fa565459'
     });

     if(response.statusCode == 200){

       print(response.body);

       Map <String, dynamic> dadosJson = jsonDecode(response.body);

       /*List <Team> teams = dadosJson["response"].map<Team>(
         (map){
           if (map["logo"] == null){
            map["logo"] = "https://png.pngtree.com/png-vector/20191027/ourmid/pngtree-sports-basket-ball-vector-png-png-image_1874392.jpg";
           }
           return Team.fromJson(map);
         }
       ).toList();*/

       List <Team> teams = [];
       for (var team in  dadosJson["response"]) {
         if (team["logo"] == null){
           continue;
         }

         var recipeAdd = Team.fromJson(team);
         
         teams.add(recipeAdd);
       }
       return teams;
     }

    throw Exception();
  
  } 
}