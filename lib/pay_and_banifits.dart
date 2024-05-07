import 'package:flutter/material.dart';
import 'package:indiahiring/ui_custom_widgets/text_custom.dart';

class Pay_and_Banifits extends StatefulWidget {
  const Pay_and_Banifits({super.key});

  @override
  State<Pay_and_Banifits> createState() => _Pay_and_BanifitsState();
}

class _Pay_and_BanifitsState extends State<Pay_and_Banifits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       width: MediaQuery.sizeOf(context).width,
       height: MediaQuery.sizeOf(context).height,
       margin: EdgeInsets.only(top: 60,left: 15,right: 15),
       child:Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [

           Custom_TextStyle(text: "Add Pay and Benefits ", size: 16),
           Container(

               width: MediaQuery.sizeOf(context).width,
               height: MediaQuery.sizeOf(context).height*0.20,

               child: Card(
                 color: Colors.black12,
               )
           ),
           Custom_TextStyle(text: "Pay", size: 18),
           SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),

           Custom_TextStyle(text: "Review the pay we estimated for your job and adjust it as needed. Check your local minimuum wage.", size: 14),
           SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),

           Custom_TextStyle(text: "Show pay by : ", size: 16),


         ],
       ),


     ),
    );
  }
}
