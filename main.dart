
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
         import 'package:flutter/material.dart';
         import 'package:firebase_core/firebase_core.dart';
         import 'firebase_options.dart';
         import 'forgetpassword.dart';
         import 'acceuil1.dart';
         import 'package:cloud_firestore/cloud_firestore.dart';
         import 'Adminpage.dart';
        import 'user.dart';
        Future<void> backgroundHandler(RemoteMessage message)async{
          print("this is a message from background");
          print(message.notification!.title);
          print(message.notification!.body);
        }

          main() {
           initfirebase();
           WidgetsFlutterBinding.ensureInitialized();
            Firebase.initializeApp();
           FirebaseMessaging.onBackgroundMessage(backgroundHandler);
           runApp(  const MyApp());
            }
     
         Future<void> initfirebase() async {
         WidgetsFlutterBinding.ensureInitialized();
        await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
        
         }
 
      
      class MyApp extends StatelessWidget {
        const MyApp({super.key});

        // This widget is the root of your application.
        @override
        Widget build(BuildContext context) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
            
              primarySwatch: Colors.blue,
            ),
            home: const  MyHomePage(title: 'Systeme',)
            );
        
          
        }
      }

         class MyHomePage extends StatefulWidget {

         const MyHomePage({super.key, required this.title});


        final String title;
        @override
         State<MyHomePage> createState() => _MyHomePageState();
      }
     
        class _MyHomePageState extends State <MyHomePage>{
            final TextEditingController _emailController=TextEditingController();
            final TextEditingController _passwordController=TextEditingController();
            final TextEditingController _adminEmail =TextEditingController();
           final TextEditingController _adminpassword =TextEditingController();


            final emailfocusNode=FocusNode();
            final passwordfocusNode=FocusNode();
            var _isobscured;


        @override
        initState(){
         super.initState();
       _isobscured=true;
        
       }
       void admin()async{
        
        Map <String,dynamic> map ;
        showDialog(context: context
        , builder: ((context) {
          return AlertDialog(
            title: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }));
        
         await FirebaseFirestore.instance.collection("admin").doc("adminlogin").snapshots().forEach((element) 
         {
          if(element.data()?['adminEmail']==_adminEmail.text && element.data()?['adminpassword']==_adminpassword.text){
          }
         }).catchError ((e){
          showDialog(context: context 
          
          , builder: (context){
            return AlertDialog(
              title: Text('Error message'),
              content: Text(e.toString()),
            );

          });
         });
       }
        void _signIn()async{
         

            await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text);
            Stream users = FirebaseFirestore.instance.collection('users').snapshots();
              
            users.forEach((snapshot) => {

            snapshot.docs.forEach((element) {
              

             var  user = User1.tojson(element.data());

          
                
                if(_emailController.text==user.email && user.role=='admin' ){
                             Navigator.push(context,MaterialPageRoute(builder: (context)=> adminpage2()));

                } 
                    
                if(_emailController.text==user.email && user.role=='user'){
                             Navigator.push(context,MaterialPageRoute(builder: (context)=>Homepage3()  ));

                } 
                
                
               // list.add(User.tojson(element.data()));

              //  list = [...list, User.tojson(element.data())];

            



              //print(list);

            })

          });

            //Navigator.push(context,MaterialPageRoute(builder: (context)=>  Homepage3() ));


          } 
  
       @override
        Widget build(BuildContext context) {
        double w =MediaQuery.of(context).size.width;
        double h =MediaQuery.of(context).size.height;
        return Scaffold(
          backgroundColor: Color.fromARGB(255, 246, 247, 246),
          body:
         Wrap(
        children: [
            Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(200.0)
                ),
                child: Container(
                  color: Colors.yellow[700],
                  height: 90.0,
                  width: 130.0,
                ),
              ),
              Positioned(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                 ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(400.0),
                    bottomRight: Radius.circular(500.0)
                  ),
                  child: Container(
                 color:Colors.green,
                 height: 130.0,
                 width: 70.0,
                  ),

                 ),
                ],
              )
              ),
            ],
            
            ),


            
           Container(
            margin: const EdgeInsets.only(left: 20,right: 20),
            width: w,
            
               child: 
               Column(
                children: [
                  Text("Hello",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold
                  ),),
                   Text("sign into your account",
                  style: TextStyle(
                    fontSize: 20,
                color: Colors.grey
                  ),),
                SizedBox(height: 50,),
                Container(
                  child:  
                  TextFormField(
                    focusNode: emailfocusNode,
                    controller: _emailController ,
                     keyboardType:  TextInputType.emailAddress,
                    decoration:  const 
                    InputDecoration(
                    hintText: "user email",
                    prefixIcon: 
                    Icon(Icons.email,
                    color: Colors.black,),
                 
                    ),
                 
                  ),
                  
                   
                ),
                SizedBox(height: 50,),


                Container(
                  child: TextFormField(
                    focusNode: passwordfocusNode,
                    obscureText: _isobscured,
                    controller: _passwordController,
                    
                    keyboardType:  TextInputType.emailAddress,
                    
                    decoration:   
                    InputDecoration( 
                      suffixIcon: IconButton(
                        padding: const EdgeInsetsDirectional.only(end :12.0),
                        icon: _isobscured ? const Icon(Icons.visibility):const Icon(Icons.visibility_off),
                      
                      onPressed: (() {
                        setState(() {
                          _isobscured= !_isobscured;
                        });
                      }),),
                      hintText: 'password',
                      icon: Icon(Icons.key),
                         
                
                    ),
                
                      
                  
                                    

                  ),

                ),
              SizedBox(height: 24,),
              GestureDetector(
                child: Text("forgot password?",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color.fromARGB(126, 59, 135, 62),
                  fontSize: 20,
                ),),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ForgotPassword()),
                ),
              ),
               
               SizedBox(height: 90),
                     Container(
                      height: 40,
                     child: Material( borderRadius: BorderRadius.circular(10),
                     shadowColor: Color.fromARGB(0, 2, 132, 70),
                     color:Colors.green,
                     elevation: 7,

              
              child:  GestureDetector(
                onTap: ()  {
                _signIn();
                admin();

                },
                child: Center(
                  child: Text('LOGIN',
                  style: TextStyle( color: Colors.white,
                fontWeight: FontWeight.bold),
                ),
              ),

              )
              ),
              
              ) ,




           ]),
           )]));

        
                  }
                  
        }
        
 