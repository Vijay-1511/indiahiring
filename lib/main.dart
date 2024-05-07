import 'package:flutter/material.dart';
import 'package:indiahiring/pay_and_banifits.dart';
import 'package:indiahiring/preferences.dart';
import 'package:indiahiring/settings_and_activity.dart';
import 'package:indiahiring/splashscreen.dart';

import 'delate_page_heading.dart';
import 'detale_page1.dart';
import 'filter_page.dart';
import 'first_page_nav.dart';
import 'job_describe.dart';
import 'loginpage.dart';
import 'homepage.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,


        textTheme: const TextTheme(
         bodyLarge: TextStyle( fontSize:40,fontWeight: FontWeight.bold)
        )
      ),
      home:  Detale_page1()
    );
  }
}
