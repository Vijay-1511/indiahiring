import 'package:flutter/material.dart';
import 'package:indiahiring/ui_custom_widgets/custom_textfield.dart';
import 'package:indiahiring/ui_custom_widgets/rounded_button.dart';
import 'package:indiahiring/ui_custom_widgets/text_custom.dart';

class Detale_page1 extends StatefulWidget {
  const Detale_page1({super.key});

  @override
  State<Detale_page1> createState() => _Detale_page1State();
}

class _Detale_page1State extends State<Detale_page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Container(
                width: MediaQuery.sizeOf(context).width,
                height:MediaQuery.sizeOf(context).height*0.2 ,
                 color: Colors.black12,
              ),

              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
              
              Custom_TextStyle(text: 'You haven’t posted a job before, so you’ll need to create an employer account',
                  size: 14,color: Colors.black,fontWeight: FontWeight.normal,),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
              Custom_TextStyle(text: "Company’s Name* :", size: 14),
              Textfield_Custom(),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),

              Custom_TextStyle(text: "Your Company’s Number of Employees :", size: 14),
              Textfield_Custom(),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),

              Custom_TextStyle(text: "Your First and Last Name :", size: 14),
              Textfield_Custom(),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),

              Custom_TextStyle(text: "How you heard about us :", size: 14),
              Textfield_Custom(),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),

              Custom_TextStyle(text: "Company’s Name* :", size: 14),
              Textfield_Custom(),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),

              Center(child: Rounded_btn(btn_Name: "Continue",btn_color: Colors.white))



              



            ],
          ),
        ),
      ),
    );
  }
}
