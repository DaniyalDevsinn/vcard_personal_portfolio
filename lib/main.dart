import 'package:flutter/material.dart';
import 'package:vcard_personal_portfolio/utils/app_color.dart';
import 'package:vcard_personal_portfolio/view/homescreen.dart';
void main() {
  runApp(VCardApp());
}

class VCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'vCard Portfolio',
      theme: ThemeData(
        primaryColor: AppColor.backgroundColor,
        fontFamily: "FontR",
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}