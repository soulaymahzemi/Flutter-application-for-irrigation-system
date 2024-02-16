import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';




class adduserpage extends StatefulWidget {

  @override
  State<adduserpage> createState() => _adduserpageeState();
}


class _adduserpageeState extends State <adduserpage>{
  final _emailadmin=TextEditingController();
     final _passworddadmin=TextEditingController();
  
 
 void _Register() async{
  String email= _emailadmin.text.trim();
  String password=_passworddadmin.text.trim();
try{
   await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
   CollectionReference users =FirebaseFirestore.instance.collection('users');
   users.doc().set({"email": email,"role":"user"});
}on FirebaseAuthException catch(e){
  print(e);
}
 }

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          margin:const EdgeInsets.all(10) ,
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                controller: _emailadmin,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))
                  ),
      
                ),
              ),
              SizedBox(height: 20,),
            TextField(
              obscureText: true,
              controller: _passworddadmin,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))
                  ),
      
                ),
              ),
              SizedBox(height: 20,),
           ElevatedButton(style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 44, 107, 49)
           )
            ,onPressed: () 
           {
          
            _Register();
           }
           ,
            child:Container( 
             width: double.infinity,child: Icon(Icons.add,size:32 ,),
           ) ,),
          
            ],
          ) ,
        ),
      ),
    );
  }
}