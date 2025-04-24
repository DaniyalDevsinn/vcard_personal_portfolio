import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About Me', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 8),
          Text(
            'I enjoy turning complex problems into simple, beautiful and intuitive designs. My job is to build your website so that it is functional and user-friendly but at the same time attractive.',
            style: TextStyle(fontSize: 16, color: Colors.grey[300]),
          ),
        ],
      ),
    );
  }
}