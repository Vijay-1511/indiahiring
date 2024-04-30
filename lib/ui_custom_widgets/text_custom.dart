import 'package:flutter/material.dart';

class Custom_TextStyle extends StatelessWidget {

  final String text;
  final FontWeight? fontWeight;
  final double size;
  final Color? color;



  Custom_TextStyle( {
    required this.text,
    this.fontWeight=FontWeight.normal,
    required this.size,
    this.color=Colors.black,

});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: size,
        color: color
      ),



    );
  }
}
