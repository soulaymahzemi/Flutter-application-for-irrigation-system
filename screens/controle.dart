import 'package:flutter/material.dart';
import 'package:systemedarosage/screens/allusers.dart';
import 'package:systemedarosage/screens/useradd.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3
    
    , child:Scaffold(
      appBar: AppBar(
        title: Text('Gestion des utilisateurs'),
          backgroundColor: Color.fromARGB(255, 54, 92, 55),
        bottom: TabBar(
          tabs: const [
            Tab(icon: Icon(Icons.supervised_user_circle_sharp,size: 28,),text: 'Add',),
           Tab(icon: Icon(Icons.edit_attributes,size: 28,),text: 'Users',),

          ],
        
        
        ),
      ),
      body: TabBarView(children :  [
      adduserpage(),
     alluser(),


      ]
 
      ),
    ) ,
    );
  }
}