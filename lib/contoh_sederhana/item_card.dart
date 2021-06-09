import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCard extends StatelessWidget {
  final String name;
  final double stok;
  final double price;
  //// Pointer to Update Function
  final Function onUpdate;
  //// Pointer to Delete Function
  final Function onDelete;

  ItemCard(this.name, this.stok, this.price, {this.onUpdate, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.blue.shade900)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  offset: Offset(0, 1), // changes position of shadow
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
                  name,
                  style: GoogleFonts.poppins(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Rp $price ",
                  style: GoogleFonts.poppins(
                      color: Colors.black87,
                      fontSize: 11,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     SizedBox(
          //       width: MediaQuery.of(context).size.width * 0.5,
          //       child: Text(
          //         name,
          //         style: TextStyle(
          //             color: Colors.black,
          //             fontWeight: FontWeight.w600,
          //             fontSize: 16),
          //       ),
          //     ),
          //     Text(
          //       "Stok : $stok ",
          //       style: TextStyle(
          //           color: Colors.black,
          //           fontWeight: FontWeight.w600,
          //           fontSize: 16),
          //     ),
          //     Text(
          //       "Rp $price ",
          //       style: TextStyle(
          //           color: Colors.black,
          //           fontWeight: FontWeight.w600,
          //           fontSize: 16),
          //     ),
          //   ],
          // ),
          // Row(
          //   children: [
          //     SizedBox(
          //       height: 40,
          //       width: 60,
          //       child: RaisedButton(
          //           shape: CircleBorder(),
          //           color: Colors.green[900],
          //           child: Center(
          //               child: Icon(
          //             Icons.arrow_upward,
          //             color: Colors.white,
          //           )),
          //           onPressed: () {
          //             // if (onUpdate != null) onUpdate!();
          //             onUpdate();
          //           }),
          //     ),
          //     SizedBox(
          //       height: 40,
          //       width: 60,
          //       child: RaisedButton(
          //           shape: CircleBorder(),
          //           color: Colors.red[900],
          //           child: Center(
          //               child: Icon(
          //             Icons.delete,
          //             color: Colors.white,
          //           )),
          //           onPressed: () {
          //             // if (onDelete != null) onDelete!();
          //             onDelete();
          //           }),
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}
