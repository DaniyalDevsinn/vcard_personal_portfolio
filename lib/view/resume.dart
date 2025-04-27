import 'package:flutter/material.dart';
import 'package:vcard_personal_portfolio/utils/app_color.dart';
import 'package:vcard_personal_portfolio/view/Portfolio.dart';
import 'package:vcard_personal_portfolio/view/aboutsection.dart';
import 'package:vcard_personal_portfolio/view/blog.dart';
import 'package:vcard_personal_portfolio/view/contact.dart';
import 'package:vcard_personal_portfolio/view/customer.dart';
import 'package:vcard_personal_portfolio/view/homescreen.dart';
import 'package:vcard_personal_portfolio/view/portfoliosdection.dart';
// import 'package:vcard_personal_portfolio/view/aboutsection.dart';
// import 'package:vcard_personal_portfolio/view/blogsection.dart';
// import 'package:vcard_personal_portfolio/view/contactsection.dart';
// import 'package:vcard_personal_portfolio/view/headersection.dart';
// import 'package:vcard_personal_portfolio/view/portfoliosdection.dart';
// import 'package:vcard_personal_portfolio/view/resumesection.dart';

class Resume extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  Resume({super.key});

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
                                  child: Column(
                                    children: [
                                      Container(
                                        height: s.height * 2.1,
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
                                                    "Resume",
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
                                            Padding(
                                               padding: const EdgeInsets.only(
                                                  left: 40, top: 40),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                        color: Color.fromARGB(255, 95, 95, 95),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                                child: Image(image: AssetImage('assets/book.png'),height: 20,width: 20,),
                                                  ),
                                                  SizedBox(width: 10),
                                                  const Text(
                                                    "Education",
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        color: AppColor.t2Color,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 10),
                                                 
                                                ],
                                                
                                              ),
                                            ),
                                             const Padding(
                                               padding: EdgeInsets.only(
                                                  left: 70, top: 40),
                                               child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                   Row(
                                                     children: [
                                                       Text(
                                                              "University school of the arts",
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  color: AppColor.t2Color,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                     ],
                                                   ),
                                                        SizedBox(height: 5),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "2007 — 2008",
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  color: AppColor.tColor,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "Nemo enims ipsam voluptatem, blanditiis praesentium voluptum delenit atque corrupti, quos\n dolores et quas molestias exceptur.",
                                                              style: TextStyle(overflow: TextOverflow.ellipsis,
                                                                  fontSize: 15,
                                                                  color: AppColor.t2Color,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                          ],
                                                        ),
                                                 ],
                                               ),
                                             ),
                                             const Padding(
                                               padding: EdgeInsets.only(
                                                  left: 70, top: 40),
                                               child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                   Row(
                                                     children: [
                                                       Text(
                                                              "New york academy of art",
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  color: AppColor.t2Color,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                     ],
                                                   ),
                                                        SizedBox(height: 5),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "2006 — 2007",
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  color: AppColor.tColor,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "Ratione voluptatem sequi nesciunt, facere quisquams facere menda ossimus,\n omnis voluptas assumenda est omnis..",
                                                              style: TextStyle(overflow: TextOverflow.ellipsis,
                                                                  fontSize: 15,
                                                                  color: AppColor.t2Color,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                          ],
                                                        ),
                                                 ],
                                               ),
                                             ),
                                             const Padding(
                                               padding: EdgeInsets.only(
                                                  left: 70, top: 40),
                                               child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                   Row(
                                                     children: [
                                                       Text(
                                                              "High school of art and design",
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  color: AppColor.t2Color,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                     ],
                                                   ),
                                                        SizedBox(height: 5),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "2002 — 2004",
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  color: AppColor.tColor,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "Duis aute irure dolor in reprehenderit in voluptate, quila voluptas mag odit aut fugit,\n sed consequuntur magni dolores eos.",
                                                              style: TextStyle(overflow: TextOverflow.ellipsis,
                                                                  fontSize: 15,
                                                                  color: AppColor.t2Color,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                          ],
                                                        ),
                                                 ],
                                               ),
                                             ),
                                                Padding(
                                               padding: const EdgeInsets.only(
                                                  left: 40, top: 40),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                        color: Color.fromARGB(255, 95, 95, 95),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12)),
                                                                child: Image(image: AssetImage('assets/book.png'),height: 20,width: 20,),
                                                  ),
                                                  SizedBox(width: 10),
                                                  const Text(
                                                    "Experience",
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        color: AppColor.t2Color,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 10),
                                                 
                                                ],
                                                
                                              ),
                                            ),
                                             const Padding(
                                               padding: EdgeInsets.only(
                                                  left: 70, top: 40),
                                               child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                   Row(
                                                     children: [
                                                       Text(
                                                              "Creative director",
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  color: AppColor.t2Color,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                     ],
                                                   ),
                                                        SizedBox(height: 5),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "2015 — Present",
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  color: AppColor.tColor,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "Nemo enim ipsam voluptatem blanditiis praesentium voluptum delenit atque corrupti, quos\n dolores et qvuas molestias exceptur.",
                                                              style: TextStyle(overflow: TextOverflow.ellipsis,
                                                                  fontSize: 15,
                                                                  color: AppColor.t2Color,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                          ],
                                                        ),
                                                 ],
                                               ),
                                             ),
                                             const Padding(
                                               padding: EdgeInsets.only(
                                                  left: 70, top: 40),
                                               child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                   Row(
                                                     children: [
                                                       Text(
                                                              "Art director",
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  color: AppColor.t2Color,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                     ],
                                                   ),
                                                        SizedBox(height: 5),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "2013 — 2015",
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  color: AppColor.tColor,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "Nemo enims ipsam voluptatem, blanditiis praesentium voluptum delenit atque corrupti, quos\n dolores et quas molestias exceptur.",
                                                              style: TextStyle(overflow: TextOverflow.ellipsis,
                                                                  fontSize: 15,
                                                                  color: AppColor.t2Color,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                          ],
                                                        ),
                                                 ],
                                               ),
                                             ),
                                             const Padding(
                                               padding: EdgeInsets.only(
                                                  left: 70, top: 40),
                                               child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                   Row(
                                                     children: [
                                                       Text(
                                                              "Web designer",
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  color: AppColor.t2Color,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                     ],
                                                   ),
                                                        SizedBox(height: 5),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "2010 — 2013",
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  color: AppColor.tColor,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "Nemo enims ipsam voluptatem, blanditiis praesentium voluptum delenit atque corrupti, quos\n dolores et quas molestias exceptur.",
                                                              style: TextStyle(overflow: TextOverflow.ellipsis,
                                                                  fontSize: 15,
                                                                  color: AppColor.t2Color,
                                                                  fontWeight:
                                                                      FontWeight.bold),
                                                            ),
                                                          ],
                                                        ),
                                                 ],
                                               ),
                                             ),
                                              Padding(
                                               padding: const EdgeInsets.only(
                                                  left: 40, top: 40),
                                              child: Row(
                                                children: [
                                                  
                                                  const Text(
                                                    "My Skills",
                                                    style: TextStyle(
                                                        fontSize: 30,
                                                        color: AppColor.t2Color,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  
                                                        
                                                 
                                                ],
                                                
                                              ),
                                            ),
                                        const SizedBox(height: 10),
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
                                                                      child: 
                                                                      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                        children: [SizedBox(height: 10,),
                                                                          ListTile(
                                                                            title: const Text(
                                                                              "Web Design 80%",
                                                                              style: TextStyle(
                                                                                  fontSize: 20,
                                                                                  color: AppColor.t2Color,
                                                                                  fontWeight:
                                                                                      FontWeight.bold),
                                                                            ),
                                                                            subtitle: LinearProgressIndicator(borderRadius: BorderRadius.circular(5),
                                                                              value: 0.8,
                                                                              backgroundColor:
                                                                                 Color(0xff383838),
                                                                              color: AppColor.tColor,
                                                                              minHeight:
                                                                                  10,)
                                                                            ),SizedBox(height: 10,),
                                                                            ListTile(
                                                                        title: const Text(
                                                                          "Graphic design 70%",
                                                                          style: TextStyle(
                                                                              fontSize: 20,
                                                                              color: AppColor.t2Color,
                                                                              fontWeight:
                                                                                  FontWeight.bold),
                                                                        ),
                                                                        subtitle: LinearProgressIndicator(borderRadius: BorderRadius.circular(5),
                                                                          value: 0.7,
                                                                          backgroundColor:
                                                                           Color(0xff383838),
                                                                          color: AppColor.tColor,
                                                                          minHeight:
                                                                              10,)
                                                                        ),SizedBox(height: 10,),
                                                                        ListTile(
                                                                        title: const Text(
                                                                          "Branding 90%",
                                                                          style: TextStyle(
                                                                              fontSize: 20,
                                                                              color: AppColor.t2Color,
                                                                              fontWeight:
                                                                                  FontWeight.bold),
                                                                        ),
                                                                        subtitle: LinearProgressIndicator(borderRadius: BorderRadius.circular(5),
                                                                          value: 0.9,
                                                                          backgroundColor:
                                                                             Color(0xff383838),
                                                                          color: AppColor.tColor,
                                                                          minHeight:
                                                                              10,)
                                                                        ),
                                                                        SizedBox(height: 10,),
                                                                        ListTile(
                                                                        title: const Text(
                                                                          "WordPress 50%",
                                                                          style: TextStyle(
                                                                              fontSize: 20,
                                                                              color: AppColor.t2Color,
                                                                              fontWeight:
                                                                                  FontWeight.bold),
                                                                        ),
                                                                        subtitle: LinearProgressIndicator(borderRadius: BorderRadius.circular(5),
                                                                          value: 0.5,
                                                                          backgroundColor:
                                                                              Color(0xff383838),
                                                                          color: AppColor.tColor,
                                                                          minHeight:
                                                                              10,)
                                                                        ),
                                                                        ],
                                                                      ),
                                                                        
                                                                      )
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
