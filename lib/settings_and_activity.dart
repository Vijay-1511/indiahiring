import 'package:flutter/material.dart';
class Settings_and_activity extends StatelessWidget {
  const Settings_and_activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar:AppBar(

           title: Text("Settings and Activity",style: TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.bold,
             color: Colors.blue
           ),),
         ) ,
       body: ListView(

children: [
  Padding(
    padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
    child: Container(

      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height*0.06,

      decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(13),
          border: Border.all(color: Colors.grey)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [

            Icon(Icons.search,color: Colors.blue,),
            SizedBox(width: 15,),
            Text("Search",style:TextStyle(
              fontSize: 15,

            ) ,),
          ],
        ),
      ),
    ),
  ),

  SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),

  ListTile(
    leading:Icon(Icons.person),
    trailing: Icon(Icons.arrow_forward_ios),
    title: Text("Accounts Settings",style: TextStyle(fontSize: 15),),


  ),
  ListTile(
    leading:Icon(Icons.devices),
    trailing: Icon(Icons.arrow_forward_ios),
    title: Text("Device Management",style: TextStyle(fontSize: 15)),


  ),
  ListTile(
    leading:Icon(Icons.email),
    trailing: Icon(Icons.arrow_forward_ios),
    title: Text("Email Settings",style: TextStyle(fontSize: 15)),


  ),
  ListTile(
    leading:Icon(Icons.lock),
    trailing: Icon(Icons.arrow_forward_ios),
    title: Text("Privacy Settings",style: TextStyle(fontSize: 15)),


  ),
  ListTile(
    leading:Icon(Icons.language),
    trailing: Icon(Icons.arrow_forward_ios),
    title: Text("Conntry and Language",style: TextStyle(fontSize: 15)),


  ),
  ListTile(
    leading:Icon(Icons.help),
    trailing: Icon(Icons.arrow_forward_ios),
    title: Text("Help Center",style: TextStyle(fontSize: 15)),


  ),
  ListTile(
    leading:Icon(Icons.archive_sharp),
    trailing: Icon(Icons.arrow_forward_ios),
    title: Text("Saved Job",style: TextStyle(fontSize: 15)),


  ),
  ListTile(
    leading:Icon(Icons.person),
    trailing: Icon(Icons.arrow_forward_ios),
    title: Text("Accessibility",style: TextStyle(fontSize: 15)),


  ),
  ListTile(
    leading:Icon(Icons.not_started_rounded),
    trailing: Icon(Icons.arrow_forward_ios),
    title: Text("About",style: TextStyle(fontSize: 15)),


  )
],

       ),

    ) ;
  }
}
