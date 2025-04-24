import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      color: Color(0xFF1e293b),
      width: double.infinity,
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          SizedBox(height: 16),
          Text('Richard Hanrick', style: TextStyle(fontSize: 26, color: Colors.white)),
          Text('Web Developer', style: TextStyle(fontSize: 18, color: Colors.grey[400])),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(icon: Icon(Icons.abc, color: Colors.white), onPressed: () {}),
              IconButton(icon: Icon(Icons.abc, color: Colors.white), onPressed: () {}),
              IconButton(icon: Icon(Icons.abc, color: Colors.white), onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}