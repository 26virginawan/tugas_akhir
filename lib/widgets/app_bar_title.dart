import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_mobile/res/custom_colors.dart';

class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Image.asset(
        //   'assets/firebase_logo.png',
        //   height: 20,
        // ),
        SizedBox(width: 8),
        Text(
          ' Shoes',
          style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: CustomColors.firebaseGrey),
        ),
        SizedBox(width: 5),
        Text(
          'app',
          style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: CustomColors.text),
        ),
      ],
    );
  }
}
