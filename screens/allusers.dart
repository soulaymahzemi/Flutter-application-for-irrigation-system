
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:systemedarosage/screens/widget/user.dart';
import 'package:systemedarosage/user.dart';


class alluser extends StatefulWidget {
  const alluser({super.key});

  @override
  State<alluser> createState() => _alluserState();
}

class _alluserState extends State<alluser> {
  @override
  Widget build(BuildContext context) {
    List<User1> alluser=[];
    return Scaffold(
      body:StreamBuilder <QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('users').orderBy('email').snapshots(),
        builder: (context, snapshot) {
          if(snapshot.hasError){
            return Center(child: Text('Error'),);
          }
          if(snapshot.hasData){
           alluser=snapshot.data!.docs.map((doc) => User1.tojson(doc.data() as Map<String,dynamic>)).toList();
           return listuser(users: alluser);
          }else{
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}