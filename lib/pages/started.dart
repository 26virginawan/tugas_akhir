import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Started extends StatefulWidget {
  @override
  StartedState createState() => StartedState();
}

class StartedState extends State<Started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Image.asset(
                'images/jump1.jpg',
                height: 250,
                width: 250,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 145),
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
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 137),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Branded',
                    style: GoogleFonts.poppins(
                        fontSize: 28,
                        color: Colors.blueAccent,
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
                // mainAxisAlignment: MainAxisAlignment.center,
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
              margin: EdgeInsets.all(30),
              width: 270,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              //membuat button login untuk lanjut kehalaman berikutnya
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(
                      color: Colors.grey.withOpacity(0.2),
                      width: 1,
                    )),
                color: Colors.blueAccent,
                child: Text(
                  "Lets Get Started",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                // untuk berpindah ke halaman selanjutnya
                onPressed: () {},
                // onPressed: () async {
                //   Navigator.of(context)
                //       .push(MaterialPageRoute(builder: (context) => Home()));
                // },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
