import 'dart:async';
import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indiahiring/homepage.dart';
import 'package:indiahiring/profilepage.dart';

import 'loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';


class MySplash  extends StatefulWidget{
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {

  @override
  initState()  {
    super.initState();
    _initialize();

  }

  Future<void> _initialize() async {

    // Perform any asynchronous initialization tasks here
    SharedPreferences prefs =await SharedPreferences.getInstance();
    String? stringValue = prefs.getString('loginstatus');
    await Future.delayed(Duration(seconds: 3)); // Example: Waiting for 3 seconds
    if(stringValue=="true"){

      Navigator.pushReplacement(context
          , MaterialPageRoute(builder: (context) => MyHomePage(),));

    }else {
      Navigator.pushReplacement(context
          , MaterialPageRoute(builder: (context) => LoginPage(),));


    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       width: double.infinity,
       height: double.infinity,
       alignment:Alignment.bottomCenter,

       decoration: BoxDecoration(
           color: Colors.white,
         image:DecorationImage(image:AssetImage('assets/splash.jpg')

         )
       ),
       child: Column(

         children: [
           SizedBox(height: 130,),
           Text("Welcome to Indeed",style: TextStyle(
             fontSize: 34,
             fontWeight: FontWeight.bold,
             color: Colors.green
           ),),

           SizedBox(height: 50,),
          Container(
            width: 200,
            height: 40,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(15),
              color: Colors.teal
            ),

                child: Center(
                  child: Text("Get Started",

                    style: TextStyle(color: Colors.black,fontSize: 20),

                  ),
                ),
              )
         ],
       )
     ),
   );


  }
}
