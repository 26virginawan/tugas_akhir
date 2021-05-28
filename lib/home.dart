import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Container(
          margin: EdgeInsets.only(left: 22, top: 25),
          child: Text(
            "Discover",
            style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
        // leading: IconButton(
        //   padding: EdgeInsets.only(left: 40, top: 25),
        //   icon: Icon(Icons.list),
        //   color: Colors.black87,
        //   iconSize: 40,
        //   onPressed: () {},
        // ),
        actions: <Widget>[
          IconButton(
              padding: EdgeInsets.only(right: 40, top: 25),
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
          margin: EdgeInsets.only(left: 40, top: 30, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      "Nike",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Adidas",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black26),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Puma",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black26),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Converse",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black26),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Jordan",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black26),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      height: 330,
                      width: 200,
                      // color: Colors.blueAccent,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blueAccent,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            "Nike",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),

                          // SizedBox(height: 7),

                          Text(
                            "Air Max 270",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(height: 10),
                          Text(
                            "Rp.899.000",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          // SizedBox(height: 20),
                          Image.asset(
                            'images/nike3q.png',
                            height: 170,
                            width: 250,
                          ),
                          // SizedBox(height: 20),
                          Container(
                            margin: EdgeInsets.only(left: 120),
                            child: Icon(
                              Icons.arrow_right_alt_outlined,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      height: 330,
                      width: 200,
                      // color: Colors.blueAccent,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.black38,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            "Nike",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),

                          // SizedBox(height: 7),

                          Text(
                            "Men's Air Max",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                          ),
                          // SizedBox(height: 10),
                          Text(
                            "Rp.699.000",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
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
                            margin: EdgeInsets.only(left: 120),
                            child: Icon(
                              Icons.arrow_right_alt_outlined,
                              size: 50,
                              color: Colors.white,
                            ),
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
                    child: Icon(
                      Icons.arrow_right_alt_outlined,
                      size: 50,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    // padding: EdgeInsets.only(left: 20),
                    height: 200,
                    width: 160,
                    // color: Colors.blueAccent,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/nike6.png',
                          height: 120,
                          width: 150,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Nike Air Max 110",
                          style: GoogleFonts.poppins(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Rp.799.000",
                          style: GoogleFonts.poppins(
                              color: Colors.black87,
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(
                    // padding: EdgeInsets.only(left: 20),
                    height: 200,
                    width: 160,
                    // color: Colors.blueAccent,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/nike5.png',
                          height: 120,
                          width: 150,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Nike Run fit",
                          style: GoogleFonts.poppins(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Rp.699.000",
                          style: GoogleFonts.poppins(
                              color: Colors.black87,
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
