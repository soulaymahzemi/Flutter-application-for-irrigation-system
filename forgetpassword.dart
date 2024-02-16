import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
 import 'package:email_validator/email_validator.dart';

      class ForgotPassword extends StatefulWidget{
         @override
     _forgetPassword createState() =>_forgetPassword();
     
       }
       class _forgetPassword extends State<ForgotPassword>{
        final formkey=GlobalKey <FormState>();
        final emailController=TextEditingController();
        
        
        @override
        void dispose(){
          emailController.dispose();
          super.dispose();
        }
        
          @override
          Widget build(BuildContext context) {
           return Scaffold(
           appBar: AppBar(
           backgroundColor: Colors.transparent,
           elevation: 0,
            title: Text('Rest Password'),
      ),
      body: Padding(padding: EdgeInsets.all(6),
      child: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Receive an email to resert your password',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
            ),
         SizedBox(height: 20,),
         TextFormField(
          controller: emailController,
          cursorColor: Colors.white,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(labelText: 'Email'),
          autovalidateMode: AutovalidateMode.onUserInteraction
          ,
          validator: (email)=>
          email !=null && !EmailValidator.validate(email)?'Enter a valid email':null,
         ),
         SizedBox(height: 20,),

         ElevatedButton.icon(
        
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            minimumSize: Size.fromHeight(50),
          ),
          icon: Icon(Icons.email_outlined),
          label:Text(
            'Rest Password',
            style: TextStyle(fontSize: 24),
            
          ) ,
          onPressed: VerifEmail,
         ),
           
         
      
        ]),
         
      ),
      ),
   
     );
          
          } 
       
         Future VerifEmail()  async{
          showDialog(context: context
          , barrierDismissible: false,
          builder: (context)=>Center(
            child: CircularProgressIndicator(),
          ),
          );
          try{
            await FirebaseAuth.instance.
            sendPasswordResetEmail(email: emailController.text.trim());
            print('object');
            final _snackBar = SnackBar(
              backgroundColor: Colors.green,
             content: Text('Password Reset Email Sent')
           );
          Navigator.of(context).popUntil((route) => route.isFirst);
          }on FirebaseAuthException catch(e){
            print(e);
            Navigator.of(context).pop();
          }
     
          
         }
       }
       
     