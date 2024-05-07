// import 'package:flutter/material.dart';
// import 'package:indiahiring/ui_custom_widgets/custom_textfield.dart';
// import 'package:indiahiring/ui_custom_widgets/text_custom.dart';
// class Communication extends StatefulWidget {
//   const Communication({super.key});
//
//   @override
//   State<Communication> createState() => _CommunicationState();
// }
//
// class _CommunicationState extends State<Communication> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: Container(
//         width: MediaQuery.sizeOf(context).width,
//         height: MediaQuery.sizeOf(context).height,
//         color: Colors.black12,
//         margin: EdgeInsets.only(top: 60,left: 15,right: 15),
//
//
//         child: Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//
//               Container(
//
//                   width: MediaQuery.sizeOf(context).width,
//                   height: MediaQuery.sizeOf(context).height*0.25,
//
//                   child: Card(
//                     color: Colors.brown,
//                   )
//               ),
//               SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
//
//               Custom_TextStyle(text: "Let applicants Contact directly for this Job", size: 18),
//               SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
//               Custom_TextStyle(text: "Mobile Number* :", size: 18),
//               Textfield_Custom(),
//
//               Custom_TextStyle(text: "Send Whatsapp Updates on this number", size: 18),
//               Custom_TextStyle(text: "By Providing your phone number, you agree that candidates can contact you directly or via HIRE India (IN)", size: 18),
//
//               Divider(
//                 thickness: 1,
//                 height: 5,
//               ),
//
//               Custom_TextStyle(text: "Communication Preferences:", size: 18),
//               Custom_TextStyle(text: "Send daily updates to*  :", size: 18),
//               Textfield_Custom(),
//
//
//
//
//             ],
//           ),
//       ),
//     );
//   }
// }
