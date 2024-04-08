import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:indiahiring/profilepage.dart';

import 'loginpage.dart';





class MySplash  extends StatefulWidget{
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {


  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context
          , MaterialPageRoute(builder: (context) =>LoginPage(),));
    });


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
