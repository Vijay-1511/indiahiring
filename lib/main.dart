import 'package:flutter/material.dart';
import 'package:indiahiring/splashscreen.dart';

import 'loginpage.dart';
import 'homepage.dart';

import 'package:flutterfire_cli/flutterfire_cli.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySplash(), // or whatever your initial screen is
    );
  }
}

