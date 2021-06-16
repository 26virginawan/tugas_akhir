import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_mobile/auth/login_page.dart';
import 'package:uas_mobile/auth/sign_in.dart';
import 'package:uas_mobile/custom/custom_colors.dart';
import 'package:uas_mobile/screens/dashboard_screen.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(25),
          color: CustomColors.background,
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
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
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
                      hintText: 'Name',
                      hintStyle: TextStyle(color: Colors.black38),
                    ),
                  ),
                ),
                SizedBox(height: 10),
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
                      "Register",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    onPressed: () async {
                      signUpWithEmail(nameController.text, emailController.text,
                              passController.text)
                          .then((result) {
                        if (result != null) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return DashboardScreen();
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
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "have an account?",
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
                              return LoginPage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Login",
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
}
