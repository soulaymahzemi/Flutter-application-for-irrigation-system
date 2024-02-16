import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';



class affichetemp extends StatefulWidget {
  @override
  _afficheState createState() => _afficheState();
}
class _afficheState extends State<affichetemp> 
{
     late Future <String>  temp;
        @override
  void initState() {
    super.initState();
    temp=loadtemp();
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
  }) ,future: temp,) ,
   
   

   ] );
  }
   Future<String>  loadtemp() async {
        int map;
         
  /*  DatabaseReference starCountRef = FirebaseDatabase.instance.ref('Sensors/Temperature');

     starCountRef.onValue.listen((DatabaseEvent event) 
      {
       final data = event.snapshot.value;
       map = jsonDecode(jsonEncode(data));
       print( map.runtimeType);
       updatet(map.toString());
       print('temp ************$t');
     
  });        */  
   
final ref = FirebaseDatabase.instance.ref();
final snapshot = await ref.child('Sensors/Temperature').get();
   final data=snapshot.value;
  
    map = jsonDecode(jsonEncode(data));
    return map.toString();

  }
  
  

  }
