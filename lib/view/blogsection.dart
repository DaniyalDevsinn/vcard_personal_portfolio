import 'package:flutter/material.dart';

class BlogSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Blog', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 16),
          ...List.generate(2, (index) => Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Blog Title ${index + 1}', style: TextStyle(fontSize: 18, color: Colors.white)),
                Text('A short description of the blog post goes here.', style: TextStyle(color: Colors.grey[300]))
              ],
            ),
          ))
        ],
      ),
    );
  }
}