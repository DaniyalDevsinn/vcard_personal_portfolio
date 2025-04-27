import 'package:flutter/material.dart';
import 'package:vcard_personal_portfolio/utils/app_color.dart';
import 'package:vcard_personal_portfolio/view/aboutsection.dart';
import 'package:vcard_personal_portfolio/view/blog.dart';
import 'package:vcard_personal_portfolio/view/contact.dart';
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

class Portfolio extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  Portfolio({super.key});

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
                                        height: s.height * 1.5,
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
                                                    "Portfolio",
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
                                            const SizedBox(height: 40),
                                            Container(height: s.height * 1.2,
                                              width: s.width ,
                                              child: GridView.builder(
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: (s.width < 1445) ? 2 : 3,
                                                  childAspectRatio: 0.8,
                                                  crossAxisSpacing: 10,
                                                  mainAxisSpacing: 10,
                                                ),
                                                itemCount: list.length,
                                                itemBuilder: (context, index) {
                                                  return Container(
                                                    height: s.height * 0.3,
                                                    width: s.width * 0.4,
                                                    decoration: BoxDecoration(
                                                        color: AppColor.cardcolor,
                                                        borderRadius:
                                                            BorderRadius.circular(20)),
                                                    child: Column(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: 250,
                                                            width: s.width,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                    image: AssetImage(list[
                                                                            index][
                                                                        "icon"]!),
                                                                    fit:
                                                                        BoxFit.fill),
                                                                color:
                                                                    AppColor.embkcolor,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(30)),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 10),
                                                        Text(
                                                          list[index]["title"]!,
                                                          style: const TextStyle(
                                                              color: AppColor.t2Color,
                                                              fontSize: 25,
                                                              fontWeight:
                                                                  FontWeight.bold),
                                                        ),
                                                        const SizedBox(height: 10),
                                                        Text(
                                                          list[index]["subtitle"]!,
                                                          style: const TextStyle(
                                                              color: AppColor.t2Color,
                                                              fontSize: 20),
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
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
    "icon": "assets/project-1.jpg",
    "title": "Finance",
    "subtitle":
        "Web development",
  },
  {
    "icon": "assets/project-2.png",
    "title": "Orizon",
    "subtitle":
        "Web development",
  },{
    "icon": "assets/project-3.jpg",
    "title": "Fundo",
    "subtitle":
        "Web design",
  },{
    "icon": "assets/project-4.png",
    "title": "Brawlhalla",
    "subtitle":
        "Applications",
  },{
    "icon": "assets/project-5.png",
    "title": "DSM.",
    "subtitle":
        "Web design",
  },{
    "icon": "assets/project-6.png",
    "title": "MetaSpark",
    "subtitle":
        "Web design",
  },{
    "icon": "assets/project-7.png",
    "title": "Summary",
    "subtitle":
        "Web development",
  },{
    "icon": "assets/project-8.jpg",
    "title": "Task Manager",
    "subtitle":
        "Applications",
  },{
    "icon": "assets/project-9.png",
    "title": "Arrival",
    "subtitle":
        "Web development",
  },
];
