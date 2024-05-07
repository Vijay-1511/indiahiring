import 'package:flutter/material.dart';
import 'package:indiahiring/pay_and_banifits.dart';
import 'package:indiahiring/ui_custom_widgets/custom_textfield.dart';
import 'package:indiahiring/ui_custom_widgets/rounded_button.dart';
import 'package:indiahiring/ui_custom_widgets/text_custom.dart';

class Job_describe extends StatefulWidget {
  const Job_describe({super.key});

  @override
  State<Job_describe> createState() => _Job_describeState();
}

class _Job_describeState extends State<Job_describe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        margin: EdgeInsets.only(top: 60,left: 15,right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Custom_TextStyle(text: "Discribe the Job ", size: 18),
            Container(

              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height*0.25,

              child: Card(
                color: Colors.black12,
              )
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),

            Custom_TextStyle(text: "Job Description : ", size: 18),
            Container(

                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height*0.4,
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                Rounded_btn(btn_Name: "Back",
                    btn_color: Colors.white,
                    btn_background: Colors.blue,
                    btn_voidCallback: (){
                  //   perform the task on the click of button
                }),
                Rounded_btn(btn_Name: "Continue",
                  btn_color: Colors.white,
                  btn_background: Colors.blue,
                btn_voidCallback: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> Pay_and_Banifits()));


                }),
              ],
            )



          ],
        ),
      ),
    );
  }
}
