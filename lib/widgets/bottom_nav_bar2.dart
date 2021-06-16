import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_mobile/screens/detail_screen.dart';
import 'package:uas_mobile/custom/custom_colors.dart';
import 'package:uas_mobile/screens/dashboard_screen.dart';

class BottomNavBar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 70.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0)),
            color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 70.0,
                width: MediaQuery.of(context).size.width / 2 - 40.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      iconSize: 35,
                      icon: Icon(
                        Icons.home_outlined,
                        color: Colors.grey[300],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DashboardScreen()),
                        );
                      },
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.poppins(
                          color: Colors.grey[300],
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )),
            Container(
              margin: EdgeInsets.only(bottom: 0),
              height: 70.0,
              width: MediaQuery.of(context).size.width / 2 - 40.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.format_indent_decrease_outlined),
                    color: CustomColors.text,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailScreen()),
                      );
                    },
                  ),
                  Text(
                    "Detail",
                    style: GoogleFonts.poppins(
                        color: CustomColors.text,
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
