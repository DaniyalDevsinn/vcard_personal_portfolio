import 'package:flutter/material.dart';

class PortfolioSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Portfolio', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 16),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: List.generate(3, (index) => Container(
              width: 200,
              height: 150,
              color: Colors.grey[800],
              child: Center(
                child: Text('Project ${index + 1}', style: TextStyle(color: Colors.white)),
              ),
            )),
          )
        ],
      ),
    );
  }
}
