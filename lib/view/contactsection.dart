import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 16),
          Text('Email: example@domain.com', style: TextStyle(color: Colors.grey[300])),
          Text('Phone: +123456789', style: TextStyle(color: Colors.grey[300])),
        ],
      ),
    );
  }
}