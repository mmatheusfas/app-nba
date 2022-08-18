import 'package:app_nba/Views/conference_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.8),
          centerTitle: true,
          title: const Text(
            "NBApp",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Colors.white
            ),
          ),
        ),
        body: Container(
          alignment: AlignmentDirectional.center,
          color: Colors.white,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget> [

                const SizedBox(height: 20),

                Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage( "images/nba_logo.png"),
                    )
                  ),
                ),

                const SizedBox(height: 70),

                     Container(
                       alignment: AlignmentDirectional.center,
                       height: 40,
                       width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black
                  ),
                  child: const Text(
                    "Select the conference: ",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                 const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: (){
                   Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: ((context)=>  TeamConference("East"))
                    )
                    );
                  }, 
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black54
                  ),
                  child: const Text(
                    "East Conference",
                    style: TextStyle(
                      fontSize: 16
                    ),
                    )
                ),

                 ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: ((context)=>  TeamConference("West"))
                    )
                    );
                  },  
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black54 
                  ),
                  child: const Text(
                    "West Conference",
                    style: TextStyle(
                      fontSize: 15
                    ),
                    )
                ),
                  ],
                )

            ),
        );
  }
}