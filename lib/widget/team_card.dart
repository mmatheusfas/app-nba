import 'package:app_nba/widget/custom_container.dart';
import 'package:flutter/material.dart';

Widget TeamCard (String nome, String code, String city, String logo){

return Column(
    children: <Widget> [

      const SizedBox(
        height: 15,
      ),

      Container(
        height: 200,
        width: 450,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(25),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(left: 8  ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyContainer(nome),

                  MyContainer(code),

                  MyContainer(city),
                ],
              ),
            ),

             Container(
                height: 400,
                width: 240,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: NetworkImage(logo)
                  )
                ),
              )
          ],
        ),
      )
    ],
  );
}