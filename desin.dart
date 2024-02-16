
import 'temperature.dart';
import 'package:flutter/material.dart';

Widget currentWeather(IconData icon)  {
  return Center(child:Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
     
    children: [ 
      Icon(icon,
      color: Color.fromARGB(255, 28, 170, 241),
      size: 64.0,
      ),
      SizedBox(
        height:10.0,
      ),
      affichetemp(),
    ],
   
  ),
  );
}