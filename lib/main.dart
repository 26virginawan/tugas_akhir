import 'package:flutter/material.dart';
import 'package:uas_mobile/pages/started.dart';
import 'package:uas_mobile/res/custom_colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tambahkan Item',
      theme: ThemeData(
        primaryColor: CustomColors.background,
      ),
      home: Started(),
    );
  }
}
