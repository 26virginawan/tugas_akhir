import 'package:google_fonts/google_fonts.dart';
import 'package:uas_mobile/contoh_sederhana/item_card.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:uas_mobile/res/custom_colors.dart';

class MainPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController stokController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  CollectionReference _pengguna =
      FirebaseFirestore.instance.collection('pengguna');

  void clearInputText() {
    nameController.text = "";
    stokController.text = "";
    priceController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Tambah Item',
            style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: CustomColors.text),
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(-5, 0),
                        blurRadius: 15,
                        spreadRadius: 3)
                  ]),
                  width: double.infinity,
                  height: 350,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 280),
                        child: Text(
                          "Nama",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: CustomColors.text),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: CustomColors.firebaseGrey),
                          ),
                          hintText: 'Isi nama',
                          labelStyle:
                              TextStyle(color: CustomColors.firebaseGrey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onChanged: (value) {
//
                        },
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 280),
                        child: Text(
                          "Stok",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: CustomColors.text),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: stokController,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: CustomColors.firebaseGrey),
                          ),
                          hintText: 'Isi Stok',
                          labelStyle:
                              TextStyle(color: CustomColors.firebaseGrey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
//
                        },
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 280),
                        child: Text(
                          "Harga",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: CustomColors.text),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: priceController,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: CustomColors.firebaseGrey),
                          ),
                          hintText: 'Isi Harga',
                          labelStyle:
                              TextStyle(color: CustomColors.firebaseGrey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
//
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 300,
                        height: 45,
                        child: RaisedButton(
                          color: CustomColors.firebaseGrey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(
                              color: Colors.grey.withOpacity(0.2),
                              width: 1,
                            ),
                          ),
                          child: Text(
                            "Tambah Item",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          onPressed: () async {
                            // TODO 1 ADD DATA HERE
                            await _pengguna.add(
                              {
                                "name": nameController.text,
                                "Stok": double.tryParse(stokController.text),
                                "Price": double.tryParse(priceController.text),
                              },
                            );
                            clearInputText();
                          },
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   children: [
                  //     SizedBox(
                  //       width: MediaQuery.of(context).size.width - 160,
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           TextField(
                  //             style: TextStyle(
                  //                 color: Colors.black,
                  //                 fontWeight: FontWeight.w600,
                  //                 fontSize: 16),
                  //             controller: nameController,
                  //             decoration: InputDecoration(
                  //                 hintText: "Isi Nama",
                  //                 hintStyle: TextStyle(
                  //                     color: Colors.grey,
                  //                     fontWeight: FontWeight.w600,
                  //                     fontSize: 16)),
                  //           ),
                  //           TextField(
                  //             style: TextStyle(
                  //                 color: Colors.black,
                  //                 fontWeight: FontWeight.w600,
                  //                 fontSize: 16),
                  //             controller: ageController,
                  //             decoration: InputDecoration(
                  //                 hintText: "Isi Usia",
                  //                 hintStyle: TextStyle(
                  //                     color: Colors.grey,
                  //                     fontWeight: FontWeight.w600,
                  //                     fontSize: 16)),
                  //             keyboardType: TextInputType.number,
                  //           ),
                  //           TextField(
                  //             style: TextStyle(
                  //                 color: Colors.black,
                  //                 fontWeight: FontWeight.w600,
                  //                 fontSize: 16),
                  //             controller: addressController,
                  //             decoration: InputDecoration(
                  //                 hintText: "Isi Alamat",
                  //                 hintStyle: TextStyle(
                  //                     color: Colors.grey,
                  //                     fontWeight: FontWeight.w600,
                  //                     fontSize: 16)),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 130,
                  //       width: 130,
                  //       padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                  //       child: RaisedButton(
                  //           shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(8)),
                  //           color: Colors.blue.shade900,
                  //           child: Text(
                  //             'Add Data',
                  //             style: TextStyle(
                  //                 color: Colors.white,
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //           onPressed: () async {
                  //             // TODO 1 ADD DATA HERE
                  //             await _pengguna.add({
                  //               "name": nameController.text,
                  //               "age": double.tryParse(ageController.text),
                  //               "address": addressController.text
                  //             });
                  //             clearInputText();
                  //           }),
                  //     ),
                  //   ],
                  // ),
                )),
            Expanded(
              child: ListView(
                children: [
                  // TODO 2 VIEW, update , and delete DATA HERE
                  /// hanya get sekali saja jika menggunakan FutureBuilder

                  // FutureBuilder<QuerySnapshot>(
                  //   future: _pengguna.get(),
                  //   builder: (buildContext, snapshot) {
                  //     return Column(
                  //       children: snapshot.data.docs
                  //           .map((e) => ItemCard(e.data()['name'],
                  //               e.data()['age'], e.data()['address']))
                  //           .toList(),
                  //     );
                  //   },
                  // ),

                  // get secara realtime jikga menggunakan stream builder
                  StreamBuilder<QuerySnapshot>(
                    // contoh penggunaan srteam
                    // _pengguna.orderBy('age', descending: true).snapshots()
                    // _pengguna.where('age', isLessThan: 30).snapshots()
                    stream:
                        _pengguna.orderBy('Stok', descending: true).snapshots(),
                    builder: (buildContext, snapshot) {
                      return Column(
                        children: snapshot.data.docs
                            .map((e) => ItemCard(
                                  e.data()['name'],
                                  e.data()['Stok'],
                                  e.data()['Price'],
                                  onUpdate: () {
                                    _pengguna
                                        .doc(e.id)
                                        .update({"Stok": e.data()['Stok'] + 1});
                                  },
                                  onDelete: () {
                                    _pengguna.doc(e.id).delete();
                                  },
                                ))
                            .toList(),
                      );
                    },
                  ),
                  SizedBox(
                    height: 150,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
