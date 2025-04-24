import 'package:flutter/material.dart';

class ResumeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Resume', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 16),
          Text('Experience', style: TextStyle(fontSize: 20, color: Colors.white)),
          SizedBox(height: 8),
          Text('Web Developer - Creative Agency (2020 - Present)', style: TextStyle(color: Colors.grey[300])),
          SizedBox(height: 16),
          Text('Education', style: TextStyle(fontSize: 20, color: Colors.white)),
          SizedBox(height: 8),
          Text('BS in Computer Science - XYZ University (2015 - 2019)', style: TextStyle(color: Colors.grey[300])),
        ],
      ),
    );
  }
}