import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_mobile/auth/register_page.dart';
// import 'package:tugas_firebase/auth_services.dart';
import 'package:uas_mobile/auth/sign_in.dart';
import 'package:uas_mobile/contoh_sederhana/main_page.dart';
// import 'package:uas_mobile/auth/first_screen.dart';

import 'package:uas_mobile/home.dart';
import 'package:uas_mobile/res/custom_colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(25),
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'images/jump1.jpg',
                  height: 200,
                  // width: 150,
                ),
                SizedBox(height: 30),
                Container(
                  width: 300,
                  child: TextField(
                    controller: emailController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: CustomColors.firebaseGrey,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: CustomColors.firebaseGrey,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: CustomColors.firebaseGrey,
                        ),
                      ),
                      focusColor: CustomColors.firebaseGrey,
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 300,
                  child: TextField(
                    obscureText: true,
                    controller: passController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: CustomColors.firebaseGrey,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: CustomColors.firebaseGrey,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: CustomColors.firebaseGrey,
                        ),
                      ),
                      focusColor: CustomColors.firebaseGrey,
                      hintText: 'password',
                      hintStyle: TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  height: 45,
                  child: RaisedButton(
                    color: CustomColors.firebaseGrey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: CustomColors.firebaseGrey,
                        width: 1,
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    onPressed: () async {
                      signInWithEmail(emailController.text, passController.text)
                          .then((result) {
                        if (result != null) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Home();
                              },
                            ),
                          );
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                // Text("tes"),
                // _signInButton(),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Container(
                        height: 40,
                        // width: 50,
                        // color: Colors.blue,
                        child: Image.asset('images/google.png'),
                      ),
                      onPressed: () {
                        signInWithGoogle().then((result) {
                          if (result != null) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return Home();
                                },
                              ),
                            );
                          }
                        });
                      },
                    ),
                    Container(
                      height: 40,
                      // width: 90,
                      child: Image.asset('images/fb.png'),
                    ),
                    Container(
                      height: 40,
                      // width: 90,
                      child: Image.asset('images/line.png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.black38),
                    ),
                    TextButton(
                      onPressed: () async {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return RegisterPage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Register",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: CustomColors.firebaseGrey),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().then((result) {
          if (result != null) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return MainPage();
                },
              ),
            );
          }
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.lightBlue),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
