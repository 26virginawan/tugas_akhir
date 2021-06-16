import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_mobile/auth/login_page.dart';
import 'package:uas_mobile/custom/custom_colors.dart';

class Started extends StatefulWidget {
  @override
  StartedState createState() => StartedState();
}

class StartedState extends State<Started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Image.asset(
                'images/jump1.jpg',
                height: 250,
                width: 250,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'The',
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Awesome',
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        color: CustomColors.firebaseGrey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Branded',
                    style: GoogleFonts.poppins(
                        fontSize: 28,
                        color: CustomColors.firebaseGrey,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Shoes',
                    style: GoogleFonts.poppins(
                        fontSize: 28,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Explore Amazing And Tranding',
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Sneaker In The World',
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              width: 270,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      color: Colors.grey.withOpacity(0.2),
                      width: 1,
                    )),
                color: CustomColors.firebaseGrey,
                child: Text(
                  "Lets Get Started",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                onPressed: () async {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
