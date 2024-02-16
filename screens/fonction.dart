import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:systemedarosage/user.dart';

Future delateuser() async{
 final docuser=FirebaseFirestore.instance.collection('users').doc('rWScOg5TE6zBWMtwldaC');
 await docuser.delete();
}


Future updateuser(User1 user1)  async{
   final docuser=FirebaseFirestore.instance.collection('users').doc(user1.email);
 await docuser.update(user1.toString() as Map<String, Object?>);
}