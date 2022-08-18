import 'package:app_nba/repository/api.dart';
import 'package:app_nba/Models/team_model.dart';
import 'package:flutter/material.dart';

import '../widget/team_card.dart';

class TeamConference extends StatelessWidget {
  String conference;
  TeamConference(this.conference);
  
  @override
  Widget build(BuildContext context) {

     Api api = Api();

    return FutureBuilder<List<Team>>(
          future: api.getApi(conference),
          builder: (context, snapshot){

            if (snapshot.hasError){
              return const Center(
                child: Text("Erro"),
              );
            }

            if(!snapshot.hasData){
              return const Center(
                child: CircularProgressIndicator()
              );
            }

            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black.withOpacity(0.8),
                title: Text(
                  conference + " Conference",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
                centerTitle: true,
              ),
              body: Container(
                color: Colors.grey,
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index){
                    List<Team> times = snapshot.data!;
                    Team time = times[index];

                   return TeamCard(time.name, time.code, time.city, time.logo);
                  }
                  ),
              ),
            );

          },
        );
  }
}

