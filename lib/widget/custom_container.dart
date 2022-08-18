import 'package:flutter/material.dart';

Widget MyContainer(String texto){

  return Container(
          alignment: Alignment.center,
          height: 35,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.7),
            borderRadius: BorderRadius.circular(25)
          ),
          child: Text(texto,
            style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17.5,
                  fontWeight: FontWeight.bold
                ),
                   ),
  );
}