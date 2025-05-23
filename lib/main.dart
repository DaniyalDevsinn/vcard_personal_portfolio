import 'package:flutter/material.dart';
import 'package:vcard_personal_portfolio/utils/app_color.dart';
// import 'package:vcard_personal_portfolio/view/Portfolio.dart';
// import 'package:vcard_personal_portfolio/view/blog.dart';
import 'package:vcard_personal_portfolio/view/resume.dart';
// import 'package:vcard_personal_portfolio/view/contact.dart';
// import 'package:vcard_personal_portfolio/view/homescreen.dart';
void main() {
  runApp(const VCardApp());
}

class VCardApp extends StatelessWidget {
  const VCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'vCard Portfolio',
      theme: ThemeData(
        primaryColor: AppColor.backgroundColor,
        fontFamily: "FontR",
      ),
      home: Resume(),
      debugShowCheckedModeBanner: false,
    );
  }
}