import 'package:flutter/material.dart';

import 'homepage.dart';


class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: Colors.blue
        ),
        textTheme: TextTheme(
            labelLarge: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            )
        ),




      ),
      home: const MyProfilepage(),
    );
  }
}


class MyProfilepage extends StatefulWidget {
  const MyProfilepage({super.key});

  @override
  State<MyProfilepage> createState() => _MyProfilepageState();
}

class _MyProfilepageState extends State<MyProfilepage> {


  final _formKey = GlobalKey<FormState>();
  final _dobController = TextEditingController();
  // File _resume;



  void _continue(){
    if(
    _formKey.currentState!.validate()){

      Navigator.push(context, MaterialPageRoute(builder: (context) => Myhome(),));

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        title: Text("My Profile",style: Theme.of(context).textTheme.labelLarge),
        centerTitle: true,


      ),


      body: Container(
        padding: EdgeInsets.only(left: 15,top: 15,right: 15),

        child: Form(


          key: _formKey,
          child: ListView(

            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4,color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1)
                            )
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3h1K9OzcH5VtzkbS_Vi-GF9K8PhhGAkF_5A&s"),

                          )
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 4,
                                  color: Colors.white
                              ),
                              color: Colors.blue
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )
                    )
                  ],
                ),
              ),


              SizedBox(height: 20,),



              TextFormField(
                keyboardType: TextInputType.name,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    hintText: "Enter name*",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },

              ),
              SizedBox(height: 20,),

              TextFormField(
                keyboardType: TextInputType.name,
                autovalidateMode: AutovalidateMode.onUserInteraction,

                decoration: InputDecoration(
                    hintText: "Email address*",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                keyboardType: TextInputType.name,
                autovalidateMode: AutovalidateMode.onUserInteraction,

                decoration: InputDecoration(
                    hintText: "Phone No*",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),

                validator: (value){
                  if(value!.isEmpty){
                    return 'enter a phone number';
                  }
                  if(value.length!=10){
                    return 'enter valid phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: _dobController,
                keyboardType: TextInputType.name,
                autovalidateMode: AutovalidateMode.onUserInteraction,

                decoration: InputDecoration(
                    hintText: "Date of birth*",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                onTap: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );
                  if (picked != null) {
                    setState(() {
                      _dobController.text = picked.toString().split(' ')[0];
                    });
                  }
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your date of birth';
                  }
                  return null;
                },
                readOnly: true,
              ),
              SizedBox(height: 20,),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,

                decoration: InputDecoration(
                    labelText: 'Upload Resume',

                    suffixIcon: Icon(Icons.upload_file),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please upload your resume';
                  }
                  return null;
                },
              ),
// File taking  form the device



              // GestureDetector(
              //   // onTap: () async {
              //   //   FilePickerResult? result =
              //   //   await FilePicker.platform.pickFiles();
              //   //   if (result != null) {
              //   //     setState(() {
              //   //       _resume = File(result.files.single.path);
              //   //     });
              //   //   }
              //   // },
              //   child: AbsorbPointer(
              //     child: TextFormField(
              //       autovalidateMode: AutovalidateMode.onUserInteraction,
              //
              //       decoration: InputDecoration(
              //         labelText: 'Upload Resume',
              //         suffixIcon: Icon(Icons.upload_file),
              //       ),
              //       validator: (value) {
              //         if (value!.isEmpty) {
              //           return 'Please upload your resume';
              //         }
              //         return null;
              //       },
              //     ),
              //   ),
              // ),

              SizedBox(height: 20,),

              Container(

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: ElevatedButton(onPressed: _continue,
                  child: Text("continue",style: TextStyle(fontSize: 30,color: Colors.cyanAccent),

                  ),

                ),
              )


            ],
          ),
        ),
      ),


    );
  }
}



