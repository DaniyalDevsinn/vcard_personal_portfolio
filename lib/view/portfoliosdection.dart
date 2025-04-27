// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:vcard_personal_portfolio/utils/app_color.dart';

class PortfoliosSection extends StatelessWidget {
  PortfoliosSection({super.key});

  final List<Map<String, String>> list = [
    {
      "icon": "assets/icon-design.png",
      "title": "Web Design",
      "subtitle": "The most modern and high-\nquality design made at a \nprofessional level.",
    },
    {
      "icon": "assets/icon-dev.png",
      "title": "Web Development",
      "subtitle": "High-quality development of \nsites at the professional level.",
    },
    {
      "icon": "assets/icon-app.png",
      "title": "Mobile Apps",
      "subtitle": "Professional development of \napplications for iOS and Android.",
    },
    {
      "icon": "assets/icon-photo.png",
      "title": "Photography",
      "subtitle": "I make high-quality photos \nof any category at \na professional level.",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.cardcolor,
        child: Center(
          child: FlutterCarousel(
            options: FlutterCarouselOptions(
              height: 300,
              showIndicator: false,
            ),
            items: _buildPortfolioRows(),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildPortfolioRows() {
    List<Widget> rows = [];
    for (int i = 0; i < list.length; i += 2) {
      rows.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPortfolioCard(list[i]),
            if (i + 1 < list.length) _buildPortfolioCard(list[i + 1]),
          ],
        ),
      );
    }
    return rows;
  }

  Widget _buildPortfolioCard(Map<String, String> item) {
    return Expanded(
      child: Container(height: 150,
        margin: const EdgeInsets.all(30),
        width: 300,
        decoration: BoxDecoration(
          color: const Color(0xff282829),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: ListTile(
            leading: Image.asset(
              item["icon"]!,
              height: 50,
              width: 50,
            ),
            title: Text(
              item["title"]!,
              style: TextStyle(
                color: AppColor.t2Color,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text(
              item["subtitle"]!,
              style: const TextStyle(
                color: AppColor.t2Color,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
