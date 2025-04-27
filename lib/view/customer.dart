import 'package:flutter/material.dart';
class Customer extends StatelessWidget {
   Customer({super.key});

  final List<Map<String, String>> list = [
    {
      "icon": "assets/logo-1-color.png",
    },
    {
      "icon": "assets/logo-2-color.png",
    },
     {
      "icon": "assets/logo-3-color.png",
    },
     {
      "icon": "assets/logo-4-color.png",
    },
     {
      "icon": "assets/logo-5-color.png",
    },
     {
      "icon": "assets/logo-6-color.png",
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff1E1E1F),
        child: Center(
          child:Row(children: [
            Expanded(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                    list[index]['icon']!,
                    height: 170,
                    width: 170,
                    ),
                  );
                  },
                ),
                ),
              ),
            
         
          ],),
        ),
      ),
    );
  }
}