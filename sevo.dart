import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';



class affichetemp extends StatefulWidget {
  @override
  _afficheState createState() => _afficheState();
}
class _afficheState extends State<affichetemp> 
{



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }


}
void redservo() async{
DatabaseReference ref = FirebaseDatabase.instance.ref("servo/moteur");
   await ref.set({
"moteur":"of"
   });


}


  /* documentexiste (String barcode) async {
   final ref = FirebaseDatabase.instance.ref();
   final snapshot = await ref.child('qrcode/code').get();
   final data=snapshot.value;
   if (data==barcode) 
   {
    print('********** Qr code existee****************');
    Navigator.push(context,MaterialPageRoute(builder: (context)=>dashbord() ));
   } 
   else {
    print('********* nest pas existe****************');
    Alert(context: context,
    type: AlertType.error,
    title: ' OPPS Error',
    desc: "Your QRcode is not validated",
    buttons: [
      DialogButton(child:
       Text('Cancel',style: TextStyle( color: Colors.white
       ,fontSize: 20
       ),), 
      onPressed: 
      ()=>
        Navigator.pop(context),
        gradient: LinearGradient(colors: [
            Color.fromRGBO(116, 116, 191, 1.0),
            Color.fromRGBO(52, 138, 199, 1.0)
          ]),
     ),
    ]
    ).show();

}

  }*/
 
   /* querycode(  String barcode )  {
   
  var  db = FirebaseFirestore.instance;
    db
    .collection('code')
    .doc(barcode)
    .get()
    .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print('*****qrcode existe*******');

      }
      else{
        print('*******qrcode ne existe pas*************');
    
   
     
     
      }
      
    });

    }*/
    
   