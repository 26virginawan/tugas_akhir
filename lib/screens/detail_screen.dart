import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_mobile/auth/sign_in.dart';
import 'package:uas_mobile/screens/add_screen2.dart';
import 'package:uas_mobile/pages/detail.dart';
import 'package:uas_mobile/pages/started.dart';
import 'package:uas_mobile/custom/custom_colors.dart';
import 'package:uas_mobile/widgets/bottom_nav_bar2.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      appBar: AppBar(
        // leadingWidth: 15,
        centerTitle: false,
        elevation: 0,
        title: Container(
          margin: EdgeInsets.only(left: 22),
          child: Text(
            "List Detail Item",
            style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 25, top: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: CustomColors.background,
            ),
            height: 35,
            width: 35,
            child: Image.asset('images/profil.png'),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: CustomColors.background,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Material(
                  color: CustomColors.background,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.black12,
                        ),
                        height: 80,
                        width: 80,
                        child: Image.asset('images/profil.png'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        auth.currentUser.email,
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.text),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Log Out",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.text),
                ),
                onTap: () {
                  // onPressed: () {
                  signOutGoogle();
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) {
                    return Started();
                  }), ModalRoute.withName('/'));
                },
                // },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddScreen2()),
          );
        },
        backgroundColor: CustomColors.firebaseGrey,
        child: Icon(Icons.add, size: 50),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar2(),
      body: SafeArea(
        child: Detail(),
      ),
      // ),
    );
  }
}
