import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';



class affichehum extends StatefulWidget {
  @override
  _afficheState createState() => _afficheState();
}
class _afficheState extends State<affichehum> 
{
     late Future <String>  hum;
        @override
  void initState() {
    super.initState();
    hum=loadhum();
  }
  @override
  Widget build(BuildContext context) {
   return
    Column(children: [
  FutureBuilder(builder:((context, snapshot) {
    if(snapshot.hasData){
      return(Text(snapshot.data!));
    }else if(snapshot.hasError){
      return Text("error");
    }
    return CircularProgressIndicator();
  }) ,future: hum,) ,
   
   

   ] );
  }
   Future<String>  loadhum() async {
        int map;
      
   
final ref1 = FirebaseDatabase.instance.ref();
final snapshot = await ref1.child('Sensors/humidite').get();
   final data=snapshot.value;
    map = jsonDecode(jsonEncode(data));
    return map.toString();

  }
  
  

  }
