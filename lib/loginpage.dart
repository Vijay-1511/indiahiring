import 'package:flutter/material.dart';
import 'package:indiahiring/profilepage.dart';



class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _mobileNumberController = TextEditingController();
  late String _mobileNumber;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(


       body: SingleChildScrollView(
         child: Container(
           width: screenSize.width,
           height: screenSize.height,
           child: Column(
             children: [
               SizedBox(height: 100,),
               Text("indeed",style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 30,
                 color: Colors.cyan
               ),),
         
               SizedBox(height: 50,),
         
               Container(
                     width: screenSize.width*0.8,
                     height: screenSize.height*0.7,
               
                 child: Card(
         
                   color: Colors.cyan,
         
                   child: ListView(
                     padding: EdgeInsets.only(left: 10,right: 10),
                     children: [
                       SizedBox(height: 20,),

                       Text("Ready to take the next step ?",style: TextStyle(
                         fontSize: 18,
                         color: Colors.white
                       ),),
                       Text("Create an account or sign in.",style: TextStyle(
                           fontSize: 14,
                           color: Colors.white
                       ),),
                       SizedBox(height: 20,),
                       Container(
                         margin: EdgeInsets.only(left: 20),
                         child: Text("By creating an account or signing in, you understand and agree to Indeed's Terms. You also acknowledge our Cookie and Privacy policies.",style: TextStyle(
                             fontSize: 10,
                             color: Colors.white
                         ),),
                       ),

                       SizedBox(height: 30,),

                       Padding(
                         padding: const EdgeInsets.only(left: 20, right: 20),
                         child: MaterialButton(
                           color: Colors.teal[100],
                           elevation: 10,
                           height: 40,
                           onPressed: () {},
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Container(
                                 height: 30.0,
                                 width: 30.0,
                                 decoration: BoxDecoration(

                                   image: DecorationImage(
                                       image: AssetImage('assets/google.png'),
                                       fit: BoxFit.cover),

                                 ),
                               ),
                               SizedBox(
                                 width: 20,
                               ),
                               Text("Sign In with Google",style: TextStyle(fontSize: 15),)
                             ],
                           ),

                           // by onpressed we call the function signup function
                         ),
                       ),
                      SizedBox(height: 20,),
                       Padding(
                         padding: const EdgeInsets.only(left: 20, right: 20),
                         child: MaterialButton(
                           color: Colors.teal[100],
                           elevation: 10,
                           height: 40,
                           onPressed: () {},
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Container(
                                 height: 30.0,
                                 width: 30.0,
                                 decoration: BoxDecoration(

                                   image: DecorationImage(
                                       image: AssetImage('assets/google.png'),
                                       fit: BoxFit.cover),

                                 ),
                               ),
                               SizedBox(
                                 width: 20,
                               ),
                               Text("Sign In with Google",style: TextStyle(fontSize: 15),)
                             ],
                           ),

                           // by onpressed we call the function signup function
                         ),
                       ),
                       SizedBox(height: 20,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Expanded(
                         child: Divider(
                           color: Colors.black,
                         ),
                       ),
                       Padding(
                         padding: EdgeInsets.symmetric(horizontal: 10.0),
                         child: Text(
                           'or',
                           style: TextStyle(fontSize: 18.0),
                         ),
                       ),
                       Expanded(
                         child: Divider(
                           color: Colors.black,
                         ),
                       ),
                     ],
                   ),
                       SizedBox(height: 20,),

                       Text("Email address or phone number*",style: TextStyle(
                           fontSize: 18,
                           color: Colors.white
                       ),),Text("If using a phone number, make sure that it is eligible to receive both WhatsApp and SMS messages",style: TextStyle(
                           fontSize: 15,
                           color: Colors.white
                       ),),

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: TextFormField(

                           keyboardType: TextInputType.name,
                           autovalidateMode: AutovalidateMode.onUserInteraction,
                           decoration: InputDecoration(
                             fillColor: Colors.white,
                               filled: true,

                               hintText: "your@email..com or 75243916538",
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                               ),

                           ),
                           validator: (value) {
                             if (value!.isEmpty) {
                               return 'Please enter your name';
                             }
                             return null;
                           },

                         ),
                       ),
                       SizedBox(height: 20,),

                       ElevatedButton(

                         child: Text('CONTINUE',style: TextStyle(color: Colors.black),),
                         style: ElevatedButton.styleFrom(

                           backgroundColor: Colors.white,
                         ),
                         onPressed: () {

                           Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile(),));
                         },
                       ),

                     ],
                   ),
         
                 ),
               )
         
             ],
           ),
         ),
       ),
    );
  }
}
