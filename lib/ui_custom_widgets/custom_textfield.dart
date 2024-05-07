import 'dart:async';

import 'package:flutter/material.dart';

class Textfield_Custom extends StatefulWidget {

  const Textfield_Custom({super.key});

  @override
  State<Textfield_Custom> createState() => _Textfield_CustomState();
}

class _Textfield_CustomState extends State<Textfield_Custom> {




  final detail_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: MediaQuery.sizeOf(context).height*0.05,
      child: TextFormField(
       controller: detail_controller,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),


        ),


      ),
    );
  }
}
