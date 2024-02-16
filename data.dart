import 'package:flutter/material.dart';

Widget historique (String data){
  return Container(
    width: 140,
    height: 150,

    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('${data}',
          ),
        ],
      ),
    ),
  );
}