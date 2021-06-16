import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_mobile/pages/detail.dart';
import 'package:uas_mobile/pages/started.dart';
import 'package:uas_mobile/custom/custom_colors.dart';
import 'package:uas_mobile/screens/dashboard_screen.dart';
import 'package:uas_mobile/widgets/bottom_nav_bar.dart';

import 'auth/sign_in.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
          margin: EdgeInsets.only(left: 22),
          child: Text(
            "Discover",
            style: GoogleFonts.poppins(
                fontSize: 25,
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
      backgroundColor: CustomColors.background,
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
                  "Tambah Item",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.text),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
                  );
                },
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
            MaterialPageRoute(builder: (context) => DashboardScreen()),
          );
        },
        backgroundColor: CustomColors.firebaseGrey,
        child: Icon(Icons.add, size: 50),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            // padding: EdgeInsets.only(left: 40, top: 35),
            margin: EdgeInsets.only(left: 25, top: 30, bottom: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        margin: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                        height: 340,
                        width: 200,
                        // color: Colors.blueAccent,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              "Nike",
                              style: GoogleFonts.poppins(
                                  color: CustomColors.text,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),

                            // SizedBox(height: 7),

                            Text(
                              "Air Max 270",
                              style: GoogleFonts.poppins(
                                  color: CustomColors.text,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(height: 10),
                            Text(
                              "Rp.899.000",
                              style: GoogleFonts.poppins(
                                  color: CustomColors.text,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            // SizedBox(height: 20),
                            Image.asset(
                              'images/nike3q.png',
                              height: 170,
                              width: 250,
                            ),
                            // SizedBox(height: 10),
                            Container(
                              // color: Colors.blue,
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: CustomColors.firebaseGrey,
                              ),
                              margin: EdgeInsets.only(left: 85, top: 20),
                              child: TextButton(
                                  child: Text(
                                    "view",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Detail()),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        padding: EdgeInsets.only(
                          left: 15,
                        ),
                        margin: EdgeInsets.only(
                            top: 5, bottom: 5, left: 5, right: 20),
                        height: 340,
                        width: 200,
                        // color: Colors.blueAccent,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              "Nike",
                              style: GoogleFonts.poppins(
                                  color: CustomColors.text,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),

                            // SizedBox(height: 7),

                            Text(
                              "Men's Air Max",
                              style: GoogleFonts.poppins(
                                  color: CustomColors.text,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                            // SizedBox(height: 10),
                            Text(
                              "Rp.699.000",
                              style: GoogleFonts.poppins(
                                  color: CustomColors.text,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            // SizedBox(height: 20),
                            Image.asset(
                              'images/nike4l.png',
                              height: 170,
                              width: 200,
                            ),
                            // SizedBox(height: 20),
                            Container(
                              // color: Colors.blue,
                              height: 40,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: CustomColors.firebaseGrey,
                              ),
                              margin: EdgeInsets.only(left: 85, top: 20),
                              child: TextButton(
                                  child: Text(
                                    "view",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Detail()),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "More",
                      style: GoogleFonts.poppins(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 35),
                      child: Icon(Icons.arrow_right_alt_outlined,
                          size: 50, color: CustomColors.text),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        // padding: EdgeInsets.only(left: 20),
                        height: 150,
                        width: 135,
                        // color: Colors.blueAccent,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/nike6.png',
                              height: 100,
                              width: 120,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Nike Air Max 110",
                              style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Rp.799.000",
                              style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        // padding: EdgeInsets.only(left: 20),
                        height: 150,
                        width: 135,
                        // color: Colors.blueAccent,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/nike5.png',
                              height: 100,
                              width: 120,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Nike Run Fit",
                              style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Rp.699.000",
                              style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        // padding: EdgeInsets.only(left: 20),
                        height: 150,
                        width: 135,
                        // color: Colors.blueAccent,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/nike9.png',
                              height: 100,
                              width: 120,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Nike Run Fit",
                              style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Rp.699.000",
                              style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
