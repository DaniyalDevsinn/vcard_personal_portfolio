import 'package:flutter/material.dart';
import 'package:vcard_personal_portfolio/utils/app_color.dart';

class AboutSection extends StatelessWidget {
   AboutSection({super.key});
final List<Map<String, String>> list = [
  {
    "icon": "assets/icon-design.png",
    "title": "Web Design",
    "subtitle": "The most modern and high-quality\n design made at a professional level.",
  },
  {
     "icon": "assets/icon-dev.png",
    "title": "Web Development",
    "subtitle": "High-quality development of sites at\n the professional level.",
  },
  {
     "icon": "assets/icon-app.png",
    "title": "Mobile Apps",
    "subtitle": "Professional development of\n applications for iOS and Android.",
  },
  {
     "icon": "assets/icon-photo.png",
    "title": "Photography",
    "subtitle": "I make high-quality photos of any\n category at a professional level.",
  }];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: AppColor.cardcolor,
        child: Center(
          child: GridView.builder(
                                      gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2, 
                                        childAspectRatio: 3, // Number of columns
                                        crossAxisSpacing: 15, // Space between columns
                                        mainAxisSpacing: 5, // Space between rows
                                      ),
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(decoration: BoxDecoration(color: const Color(0xff282829),borderRadius: BorderRadius.circular(20)),
                                            
                                            child: Center(
                                              child: ListTile(
                                                      leading: Container(
                                                        height: 50,
                                                        width: 50,
                                                        decoration: const BoxDecoration(
                                                        boxShadow: [
                                                         
                                                        ],
                                                        color: Color(0xff282829),
                                                        // borderRadius: BorderRadius.circular(10),
                                                        ),
                                                        child: Center(
                                                        child: Image(
                                                          image: AssetImage(list[index]["icon"]!),
                                                          height: 40,
                                                          width: 40,
                                                        ),
                                                        ),
                                                      ),
                                                      title:  Text(list[index]["title"]!, style: const TextStyle(color: AppColor.t2Color, fontSize: 20, fontWeight: FontWeight.w400),),
                                                      subtitle:  Padding(
                                                        padding: const EdgeInsets.only(left:10, top: 5),
                                                        child: Text(list[index]["subtitle"]!, style: const TextStyle(color: AppColor.t2Color, fontSize: 15, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),),
                                                      ),
                                                    ),
                                            ),
                                          ),
                                        );
                                      },
                                      itemCount: list.length, // Number of items
                                    ),
        ),
      ),
    );
  }
}