import 'package:flutter/material.dart';
import 'package:vcard_personal_portfolio/utils/app_color.dart';
import 'package:vcard_personal_portfolio/view/Portfolio.dart';
import 'package:vcard_personal_portfolio/view/aboutsection.dart';
import 'package:vcard_personal_portfolio/view/blog.dart';
import 'package:vcard_personal_portfolio/view/customer.dart';
import 'package:vcard_personal_portfolio/view/homescreen.dart';
import 'package:vcard_personal_portfolio/view/portfoliosdection.dart';
import 'package:vcard_personal_portfolio/view/resume.dart';
// import 'package:vcard_personal_portfolio/view/aboutsection.dart';
// import 'package:vcard_personal_portfolio/view/blogsection.dart';
// import 'package:vcard_personal_portfolio/view/contactsection.dart';
// import 'package:vcard_personal_portfolio/view/headersection.dart';
// import 'package:vcard_personal_portfolio/view/portfoliosdection.dart';
// import 'package:vcard_personal_portfolio/view/resumesection.dart';

class Contact extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  Contact({super.key});

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            SizedBox(
              height: s.height * 0.2,
              width: s.width,
            ),
            Container(
              height: s.height * 1.5,
              width: s.width,
              color: AppColor.backgroundColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (s.width <= 1250)
                      ? SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height: s.height * 0.3,
                                width: s.width,
                                decoration: BoxDecoration(
                                  color: AppColor.cardcolor,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              const SizedBox(height: 30),
                              Container(
                                height: s.height * 1.2,
                                width: s.width,
                                decoration: BoxDecoration(
                                    color: AppColor.cardcolor,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                            ],
                          ),
                        )
                      : (s.width > 1250)
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    SingleChildScrollView(
                                      controller: _controller,
                                    ),
                                    Column(
                                      children: [
                                        const SingleChildScrollView(),
                                        Container(
                                          height: s.height * 1,
                                          width: s.width * 0.2,
                                          decoration: BoxDecoration(
                                            color: AppColor.cardcolor,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 30,
                                                      vertical: 40),
                                                  child: Container(
                                                    height: 150,
                                                    width: 150,
                                                    decoration: BoxDecoration(
                                                        image: const DecorationImage(
                                                            image: AssetImage(
                                                                "assets/my-avatar.png"),
                                                            fit: BoxFit.fill),
                                                        color:
                                                            AppColor.embkcolor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30)),
                                                  ),
                                                ),
                                                const Text(
                                                  "Richard hanrick",
                                                  style: TextStyle(
                                                      color: AppColor.t2Color,
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      overflow: TextOverflow
                                                          .ellipsis),
                                                ),
                                                const SizedBox(height: 10),

                                                // Text("_________________",style: TextStyle(color: AppColor.t2Color,),),
                                                const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image(
                                                        image: AssetImage(
                                                            "assets/line.PNG"))
                                                  ],
                                                ),
                                                const SizedBox(height: 5),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: ListTile(
                                                    leading: Container(
                                                      height: 50,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                          boxShadow: const [
                                                            BoxShadow(
                                                                color: AppColor
                                                                    .tColor,
                                                                blurRadius: 1,
                                                                spreadRadius: 1)
                                                          ],
                                                          color: AppColor
                                                              .cardcolor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: const Icon(
                                                        Icons
                                                            .mail_outline_outlined,
                                                        color: AppColor.tColor,
                                                      ),
                                                    ),
                                                    title: const Text(
                                                      "Email",
                                                      style: TextStyle(
                                                          color:
                                                              AppColor.t2Color,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                    subtitle: const Text(
                                                      "richard@example.com",
                                                      style: TextStyle(
                                                          color:
                                                              AppColor.t2Color,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          overflow: TextOverflow
                                                              .ellipsis),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 20),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: ListTile(
                                                    leading: Container(
                                                      height: 50,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                          boxShadow: const [
                                                            BoxShadow(
                                                                color: AppColor
                                                                    .tColor,
                                                                blurRadius: 1,
                                                                spreadRadius: 1)
                                                          ],
                                                          // image: DecorationImage(image: AssetImage("assets/icon-app.png"),fit: BoxFit.fitHeight,)
                                                          color: AppColor
                                                              .cardcolor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: const Center(
                                                          child: Image(
                                                        image: AssetImage(
                                                          "assets/icon-app.png",
                                                        ),
                                                        height: 25,
                                                        width: 25,
                                                      )),
                                                    ),
                                                    title: const Text(
                                                      "Phone",
                                                      style: TextStyle(
                                                          color:
                                                              AppColor.t2Color,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                    subtitle: const Text(
                                                      "+1 (213) 352-2795",
                                                      style: TextStyle(
                                                          color:
                                                              AppColor.t2Color,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          overflow: TextOverflow
                                                              .ellipsis),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 20),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: ListTile(
                                                    leading: Container(
                                                      height: 50,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                          boxShadow: const [
                                                            BoxShadow(
                                                                color: AppColor
                                                                    .tColor,
                                                                blurRadius: 1,
                                                                spreadRadius: 1)
                                                          ],
                                                          // image: DecorationImage(image: AssetImage("assets/icon-app.png"),fit: BoxFit.fitHeight,)
                                                          color: AppColor
                                                              .cardcolor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: const Center(
                                                          child: Image(
                                                        image: AssetImage(
                                                          "assets/Cal.PNG",
                                                        ),
                                                        height: 25,
                                                        width: 25,
                                                      )),
                                                    ),
                                                    title: const Text(
                                                      "Birthday",
                                                      style: TextStyle(
                                                          color:
                                                              AppColor.t2Color,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                    subtitle: const Text(
                                                      "June 23, 1982",
                                                      style: TextStyle(
                                                          color:
                                                              AppColor.t2Color,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          overflow: TextOverflow
                                                              .ellipsis),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 20),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: ListTile(
                                                    leading: Container(
                                                      height: 50,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                          boxShadow: const [
                                                            BoxShadow(
                                                                color: AppColor
                                                                    .tColor,
                                                                blurRadius: 1,
                                                                spreadRadius: 1)
                                                          ],
                                                          color: AppColor
                                                              .cardcolor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: const Center(
                                                          child: Image(
                                                        image: AssetImage(
                                                          "assets/Cal.PNG",
                                                        ),
                                                        height: 25,
                                                        width: 25,
                                                      )),
                                                    ),
                                                    title: const Text(
                                                      "Location",
                                                      style: TextStyle(
                                                          color:
                                                              AppColor.t2Color,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                    subtitle: const Text(
                                                      "Sacramento, California, USA",
                                                      style: TextStyle(
                                                          color:
                                                              AppColor.t2Color,
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          overflow: TextOverflow
                                                              .ellipsis),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                        height: 35,
                                                        width: 32,
                                                        child: Image(
                                                          image: AssetImage(
                                                              "assets/facb.PNG"),
                                                          fit: BoxFit.fill,
                                                        )),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 7.0),
                                                      child: SizedBox(
                                                          height: 35,
                                                          width: 32,
                                                          child: Image(
                                                            image: AssetImage(
                                                                "assets/twi.PNG"),
                                                            fit: BoxFit.fill,
                                                          )),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 7.0),
                                                      child: SizedBox(
                                                          height: 35,
                                                          width: 32,
                                                          child: Image(
                                                            image: AssetImage(
                                                                "assets/ins.PNG"),
                                                            fit: BoxFit.fill,
                                                          )),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 30),
                                SingleChildScrollView(
                                  child: Column(mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: s.height * 1.6,
                                        width: s.width * 0.6,
                                        decoration: BoxDecoration(
                                          color: AppColor.cardcolor,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 40, top: 40),
                                                  child: Text(
                                                    "Contact",
                                                    style: TextStyle(
                                                        fontSize: 40,
                                                        color: AppColor.t2Color,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                Container(
                                                  height: 90,
                                                  width: s.width * 0.4,
                                                  decoration: const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              bottomLeft: Radius
                                                                  .circular(40),
                                                              topRight: Radius
                                                                  .circular(
                                                                      45)),
                                                      color: Color(0xff282829)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                     children: [
                                                      InkWell(onTap: () {
                                                         Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => HomeScreen())));
                                                      },
                                                        child: const Text(
                                                          "About",
                                                          style: TextStyle(
                                                              color: AppColor
                                                                  .t2Color,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                         Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Resume())));},
                                                        child: const Text(
                                                          "Resume",
                                                          style: TextStyle(
                                                              color: AppColor
                                                                  .t2Color,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                       InkWell(
                                                        onTap: () {
                                                         Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Portfolio())));},
                                                         child: const Text(
                                                          "Portfolio",
                                                          style: TextStyle(
                                                              color: AppColor
                                                                  .t2Color,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                                                                               ),
                                                       ),
                                                       InkWell(
                                                        onTap: () {
                                                         Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Blog())));},

                                                         child: const Text(
                                                          "Blog",
                                                          style: TextStyle(
                                                              color: AppColor
                                                                  .t2Color,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                                                                               ),
                                                       ),
                                                       InkWell(
                                                        onTap: () {
                                                         Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Contact())));},
                                                         child: const Text(
                                                          "Contact",
                                                          style: TextStyle(
                                                              color: AppColor
                                                                  .t2Color,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                                                                               ),
                                                       ),
                                                    ],
                                                   ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40, top: 5),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 5,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                        color: AppColor.tColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                  left: 10, top: 5,right: 10),
                                                  child: SizedBox(height: 400,width: s.width*0.5,
                                                    child: Image(image: AssetImage("assets/MAP.PNG",),height: s.height,width: s.width,),
                                                  ),
                                                ),
                                              ],
                                            ),
                                             const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 40, top: 40),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Contact Form",
                                                        style: TextStyle(
                                                            fontSize: 30,
                                                            color: AppColor.t2Color,
                                                            fontWeight:
                                                                FontWeight.bold),
                                                      ),
                                                    ],
                                                  ),
                                                ), 
                                                Column(
                                                  children: [
                                                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                      
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 40, top: 5),
                                                          child: Container(
                                                            height: 80,
                                                            width: s.width*0.2,
                                                            decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 83, 83, 83)),
                                                                // color:
                                                                //     AppColor.tColor,
                                                                borderRadius:
                                                                    BorderRadius
                                                                      .circular(25)),
                                                                      child: const TextField(
                                                                        style: TextStyle(color: Color.fromARGB(255, 228, 227, 225)), // Entry text color
                                                                        decoration: InputDecoration(
                                                                        border: InputBorder.none,
                                                                        hintText: "Full Name",
                                                                        hintStyle: TextStyle(color: AppColor.t2Color), // Hint text color
                                                                        contentPadding: EdgeInsets.only(left: 20, top: 20),
                                                                        ),
                                                                      ),
                                                          ),
                                                        ),
                                                          Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 20, top: 5),
                                                          child: Container(
                                                            height: 80,
                                                            width: s.width*0.2,
                                                            decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 83, 83, 83)),
                                                                // color:
                                                                //     AppColor.tColor,
                                                                borderRadius:
                                                                    BorderRadius
                                                                      .circular(25)),
                                                                      child: const TextField(
                                                                        style: TextStyle(color: Color.fromARGB(255, 228, 227, 225)), // Entry text color
                                                                        decoration: InputDecoration(
                                                                        border: InputBorder.none,
                                                                        hintText: "Email Address",
                                                                        hintStyle: TextStyle(color: AppColor.t2Color), // Hint text color
                                                                        contentPadding: EdgeInsets.only(left: 20, top: 20),
                                                                        ),
                                                                      ),
                                                          ),
                                                        ),
                                                       
                                                                                                   
                                                                                                   
                                                      ],
                                                    ),
                                                     const SizedBox(height: 60,),
                                                          Padding(
                                                          padding:
                                                              const EdgeInsets.only(
                                                                  left: 40, top: 5),
                                                          child: Container(
                                                            height: s.height*0.5,
                                                            width: s.width*0.5,
                                                            decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 83, 83, 83)),
                                                                // color:
                                                                //     AppColor.tColor,
                                                                borderRadius:
                                                                    BorderRadius
                                                                      .circular(25)),
                                                                      child: const TextField(
                                                                        style: TextStyle(color: Color.fromARGB(255, 228, 227, 225)), // Entry text color
                                                                        decoration: InputDecoration(
                                                                        border: InputBorder.none,
                                                                        hintText: "Your Message",
                                                                        hintStyle: TextStyle(color: AppColor.t2Color), // Hint text color
                                                                        contentPadding: EdgeInsets.only(left: 20, top: 20),
                                                                        ),
                                                                      ),
                                                          ),
                                                        ),
                                                        const SizedBox(height: 20,),
                                                          Row(mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.only(left: 30,right: 30),
                                                                child: Container(
                                                                  height: 50,
                                                                  width: 150,
                                                                  decoration: BoxDecoration(border: Border.all(color: const Color.fromARGB(255, 83, 83, 83)),
                                                                      // color:
                                                                      //     AppColor.tColor,
                                                                      borderRadius:
                                                                          BorderRadius
                                                                            .circular(25)),
                                                                            child: TextButton(
                                                                              onPressed: () {
                                                                                // Add your button action here
                                                                              },
                                                                              child: const Text(
                                                                                "Send Message",
                                                                                style: TextStyle(
                                                                                    color: AppColor.t2Color,
                                                                                    fontSize: 10,
                                                                                    fontWeight: FontWeight.bold),
                                                                              ),
                                                                            ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                       
                                                           
                                                  ],
                                                ),
                                          ],

                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : Container(), // Add a fallback widget for the ternary operator
                ], // Close the children list
              ),
            ),
            // HeaderSection(),
            // AboutSection(),
            // ResumeSection(),
            // PortfolioSection(),
            // BlogSection(),
            // ContactSection(),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, String>> list = [
  {
    "icon": "assets/icon-design.png",
    "title": "Web Design",
    "subtitle":
        "The most modern and high-quality design made at a professional level.",
  },
  {
    "icon": "assets/icon-dev.png",
    "title": "Web Development",
    "subtitle": "High-quality development of sites at the professional level.",
  },
  {
    "icon": "assets/icon-app.png",
    "title": "Mobile Apps",
    "subtitle": "Professional development of applications for iOS and Android.",
  },
  {
    "icon": "assets/icon-photo.png",
    "title": "Photography",
    "subtitle":
        "I make high-quality photos of any category at a professional level.",
  }
];
