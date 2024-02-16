import 'package:flutter/material.dart';
import 'package:systemedarosage/screens/fonction.dart';
import 'package:systemedarosage/user.dart';


class listuser extends StatelessWidget {
List<User1> users;
listuser({required this.users});
  @override
  Widget build(BuildContext context) {
    final alluser=users;
    final _controllerRole=TextEditingController();
    return ListView.builder(
            itemCount: alluser.length,
            itemBuilder:(context,index){
              return Card(
                child: ListTile(
                 
                  title: Text(alluser[index].email,style:TextStyle(fontSize: 22) ,),
                  subtitle: Text(alluser[index].role.toString()),
                  trailing: Row(
                    mainAxisSize:MainAxisSize.min ,
                    children: [
                      TextButton(onPressed:() {
                    showDialog(context: context,
                     builder:(context)=>AlertDialog(
                      title: Text('Update:${alluser[index].role}  '),
                      content:SingleChildScrollView(
                        child: Container(
                          height: 250,
                          child: Column(
                            children: [
                              TextField(

                                style: TextStyle(fontSize: 22,color: Color.fromARGB(210, 15, 1, 1)),
                                controller: _controllerRole,
                                decoration: InputDecoration(labelText: 'Role',
                                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40)))),
                                
                      
                              ),
                              SizedBox(height: 20,),
                              ElevatedButton(
                                onPressed: (){
                                  final usr=User1(email: alluser[index].email, role: alluser[index].role);
                                }, 
                              child: Container(
                                width: double.infinity,child: Text('update'),
                              ),),
                            ],
                          ),
                        ),
                      ) ,
                     actions: [
                      ElevatedButton(onPressed: (){
                     
                        Navigator.pop( context,'Annuler');
                      }, 
                      child:Text("Annuler") ),
                     ],
                     )
                     );
                  },child: Icon(Icons.edit,size: 32,color: Color.fromARGB(255, 4, 238, 223)),
                  
      
                ),
                  //***********delate  */
                  TextButton(onPressed:() 
                  {
                    showDialog(context: context, builder:(context)=>AlertDialog(
                      title: Text('Voulez-vous vraiment supprimer ${alluser[index].email}? '),
                      actions: [
                        ElevatedButton(onPressed: (){
                          
                          delateuser();
                        
                 Navigator.pop(context,'oui');

                        }, child: Text('Oui')),
                        ElevatedButton(onPressed: (){
                          Navigator.pop(context,'Annuler');
                        }, child: Text('NOn'))
                      ],
                    )
                   
                    
                    
                    );
                    
                  },child: Icon(Icons.delete,size: 32,color: Colors.red),
                  
                  
               ),
                    ],
                  )
                ),
              
              );


            } 
             );;
  }
}