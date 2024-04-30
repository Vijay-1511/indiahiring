import 'package:flutter/material.dart';
import 'package:indiahiring/ui_custom_widgets/custom_textfield.dart';
import 'package:indiahiring/ui_custom_widgets/rounded_button.dart';
import 'package:indiahiring/ui_custom_widgets/text_custom.dart';

class Job_Location extends StatefulWidget {
  const Job_Location({super.key});

  @override
  State<Job_Location> createState() => _Job_LocationState();
}

class _Job_LocationState extends State<Job_Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height*0.1,),
              Custom_TextStyle(text:"Heading",size: 30,fontWeight: FontWeight.normal),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),

              Custom_TextStyle(text: "Job Title* :", size: 14),
              Textfield_Custom(),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),

              Divider(
                color: Colors.lightBlueAccent.shade100,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),

              Custom_TextStyle(text:"Job Posting Location",size: 22,fontWeight: FontWeight.bold),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),

              Custom_TextStyle(text: "Which option best describes this job’s location? *:", size: 14),
              Textfield_Custom(),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),

              Custom_TextStyle(text: "City* :", size: 14),
              Textfield_Custom(),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height*0.1,
                color: Colors.black12,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Custom_TextStyle(text: "City* :", size: 14),
                        Textfield_Custom(),
                      ],
                    ),
                    Column(
                      children: [
                        Custom_TextStyle(text: "City* :", size: 14),
                        Textfield_Custom(),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),

              Custom_TextStyle(text: "Street Address* :", size: 14),
              Textfield_Custom(),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Rounded_btn(btn_Name: "Back",btn_color: Colors.white,btn_background: Colors.blue,
                  btn_voidCallback: (){
                    //   perform the task on the click of button

                  }),
                  Rounded_btn(btn_Name: "Continue",btn_color: Colors.white,
                    btn_background: Colors.blue,btn_voidCallback: (){
                      //   perform the task on the click of button

                    },),
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}
