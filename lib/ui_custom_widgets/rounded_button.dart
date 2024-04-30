import 'package:flutter/material.dart';
class Rounded_btn extends StatelessWidget {

 final String btn_Name;
 final Icon? btn_icon;
 final Color? btn_color,btn_background;
 final TextStyle? btn_textStyle;
 final VoidCallback? btn_voidCallback;

  Rounded_btn({


    required this.btn_Name,
    this.btn_icon,
    this.btn_color=Colors.blue,
    this.btn_textStyle,
    this.btn_voidCallback,
    this.btn_background=Colors.blue

  } );



  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () {
         btn_voidCallback!();
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: btn_background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        )
      ),
      child: Text(btn_Name,style: TextStyle(color: btn_color),),
    );
  }
}
