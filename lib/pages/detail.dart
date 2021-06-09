import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_mobile/auth/sign_in.dart';
import 'package:uas_mobile/pages/started.dart';

class Detail extends StatefulWidget {
  @override
  DetailState createState() => DetailState();
}

class DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.only(left: 25, top: 20),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black87,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
              padding: EdgeInsets.only(right: 25, top: 25),
              icon: Icon(Icons.search),
              iconSize: 40,
              onPressed: () {},
              color: Colors.black87),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          // padding: EdgeInsets.only(left: 40, top: 35),
          margin: EdgeInsets.only(left: 25, right: 25),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 50),
                child: Image.asset(
                  'images/nike3q.png',
                  height: 250,
                  width: 250,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nike Air Max 70",
                    style: GoogleFonts.poppins(
                        color: Colors.black87,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // padding: EdgeInsets.only(right: 320),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum",
                  style: GoogleFonts.poppins(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Size",
                    style: GoogleFonts.poppins(
                        color: Colors.black87,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Size Guide",
                    style: GoogleFonts.poppins(
                        color: Colors.black38,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black12,
                    ),
                    child: Text(
                      "39",
                      style: GoogleFonts.poppins(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black12,
                    ),
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    child: Text(
                      "40",
                      style: GoogleFonts.poppins(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black12,
                    ),
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    child: Text(
                      "41",
                      style: GoogleFonts.poppins(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black12,
                    ),
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    child: Text(
                      "42",
                      style: GoogleFonts.poppins(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Review",
                    style: GoogleFonts.poppins(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.black12,
                    ),
                    height: 40,
                    width: 40,
                    child: Image.asset('images/foto1.png'),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.black12,
                    ),
                    height: 40,
                    width: 40,
                    child: Image.asset('images/foto2.png'),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.black12,
                    ),
                    height: 40,
                    width: 40,
                    child: Image.asset('images/foto3.png'),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.black12,
                    ),
                    height: 40,
                    width: 40,
                    child: Image.asset('images/foto4.png'),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  signOutGoogle();
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) {
                    return Started();
                  }), ModalRoute.withName('/'));
                },
                color: Colors.deepPurple,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sign Out',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
