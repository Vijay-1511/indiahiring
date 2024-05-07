import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:indiahiring/profilepage.dart';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homepage.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp();
    return MaterialApp(
      title: 'Login Page',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();
  final _mobileNumberController = TextEditingController();
  late String _mobileNumber;
  String _verificationId = '';
  final GoogleSignIn googleSignIn = GoogleSignIn(
    scopes: ['email', 'profile', 'openid'], // Request email and profile scopes
  );

  late SharedPreferences _prefs;

  Future<void> _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    _prefs.setString('loginstatus', 'true');
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Myhome(),
        ));
  }

  Future<void> _signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      String userName = googleSignIn.currentUser!.displayName!;
      String token = googleSignIn.currentUser!.id;

      _initPrefs();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
      } else {
        // User canceled sign-in
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Sign-in canceled'),
        ));
      }
    } catch (error) {
      // Handle sign-in errors
      print('Error signing in with Google: $error');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Error signing in with Google'),
      ));
    }
  }

  Future<void> _signOut() async {
    await googleSignIn.signOut();
    // Perform any additional sign-out operations as needed
  }

  Future<void> _signInWithApple() async {

  }

  Future<void> _verifyPhoneNumber(String phoneNumber) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        // This callback will be invoked if verification is done automatically.
        // You can use this to sign in the user.
        await FirebaseAuth.instance.signInWithCredential(credential);
        // Navigate to the next screen after successful verification.
      },
      verificationFailed: (FirebaseAuthException e) {
        // If verification fails, display an error message.
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        // Save the verification ID sent by Firebase.
        setState(() {
          _verificationId = verificationId;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        // Auto retrieval timeout, can be used to reset the UI.
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "indeed",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.cyan),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: screenSize.width * 0.8,
                height: screenSize.height * 0.7,
                child: Card(
                  color: Colors.cyan,
                  child: ListView(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Ready to take the next step ?",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        "Create an account or sign in.",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "By creating an account or signing in, you understand and agree to Indeed's Terms. You also acknowledge our Cookie and Privacy policies.",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: MaterialButton(
                          color: Colors.teal[100],
                          elevation: 10,
                          height: 40,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/google.png'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                  onTap: () {
                                    _signInWithGoogle();
                                  },
                                  child: Text(
                                    "Sign In with Google",
                                    style: TextStyle(fontSize: 15),
                                  ))
                            ],
                          ),

                          // by onpressed we call the function signup function
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: MaterialButton(
                          color: Colors.teal[100],
                          elevation: 10,
                          height: 40,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/google.png'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                  onTap: () {

                                    _signInWithApple();
                                  },
                                  child: Text(
                                    "Sign In with Apple Id",
                                    style: TextStyle(fontSize: 15),
                                  ))
                            ],
                          ),

                          // by onpressed we call the function signup function
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'or',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Email address or phone number*",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        "If using a phone number, make sure that it is eligible to receive both WhatsApp and SMS messages",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _mobileNumberController,
                          keyboardType: TextInputType.number,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Enter your Mobile Number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter Valid Mobile Number';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        child: Text(
                          'CONTINUE',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(context
                              , MaterialPageRoute(builder: (context) => MyProfile(),));

                          // _mobileNumber=_mobileNumberController.text;
                          // _verifyPhoneNumber(_mobileNumber);

                          //dasda
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => MyProfile(),
                          //     ));
                        },
                      ),
                    ],
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

