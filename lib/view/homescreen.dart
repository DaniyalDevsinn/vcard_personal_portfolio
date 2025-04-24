import 'package:flutter/material.dart';
import 'package:vcard_personal_portfolio/utils/app_color.dart';
// import 'package:vcard_personal_portfolio/view/aboutsection.dart';
// import 'package:vcard_personal_portfolio/view/blogsection.dart';
// import 'package:vcard_personal_portfolio/view/contactsection.dart';
// import 'package:vcard_personal_portfolio/view/headersection.dart';
// import 'package:vcard_personal_portfolio/view/portfoliosdection.dart';
// import 'package:vcard_personal_portfolio/view/resumesection.dart';


class HomeScreen extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
  var s=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
                    Container(
                      height: s.height*0.2,width:s.width,
                      
                    ),
            Container(height: s.height*1.5,width: s.width,color: AppColor.backgroundColor,
              child:
               Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  (s.width <= 1250)?
                    Column(
                      children: [
                        Container(
                          height: s.height * 0.3,
                          width: s.width * 0.6,
                          decoration: BoxDecoration(
                            color: AppColor.cardcolor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),SizedBox(height: 30),
                   Container(
                    height: s.height*1.2,width:s.width*0.6,
                    decoration: BoxDecoration(color: AppColor.cardcolor,borderRadius: BorderRadius.circular(50)
                    
                    ),
                  ),
                      ],
                    )
                  :
                  (s.width > 1250)
                  ? Row(crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          children: [SingleChildScrollView(controller: _controller,),
                            Column(
                              children: [SingleChildScrollView(),
                                Container(
                                  height: s.height * 1,
                                  width: s.width * 0.2,
                                  decoration: BoxDecoration(
                                    color: AppColor.cardcolor,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 40),
                                        child: Container(height: 150,width: 150,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/my-avatar.png"),fit: BoxFit.fill),color: AppColor.embkcolor,borderRadius: BorderRadius.circular(30)),),
                                      ),
                                      Text("Richard hanrick",style: TextStyle(color: AppColor.t2Color,fontSize: 30,fontWeight:FontWeight.bold,overflow: TextOverflow.ellipsis),),
                                      Text("_________________",style: TextStyle(color: AppColor.t2Color,),),SizedBox(height: 10),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ListTile(
                                          leading: Container(height: 50,width: 50,child:Icon(Icons.mail_outline_outlined,color: AppColor.tColor,),decoration:  BoxDecoration(color: AppColor.embkcolor,borderRadius: BorderRadius.circular(10)),),
                                          title: Text("Email",style: TextStyle(color: AppColor.t2Color,fontSize: 20,fontWeight:FontWeight.w400),),
                                          subtitle: Text("richard@example.com",style: TextStyle(color: AppColor.t2Color,fontSize: 15,fontWeight:FontWeight.bold,overflow: TextOverflow.ellipsis),),
                                        ),
                                      ),SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ListTile(
                                          leading: Container(height: 50,width: 50,decoration:  BoxDecoration(image: DecorationImage(image: AssetImage("assets/icon-app.png"),fit: BoxFit.scaleDown,),color: AppColor.embkcolor,borderRadius: BorderRadius.circular(10)),),
                                          title: Text("Phone",style: TextStyle(color: AppColor.t2Color,fontSize: 20,fontWeight:FontWeight.w400),),
                                          subtitle: Text("+1 (213) 352-2795",style: TextStyle(color: AppColor.t2Color,fontSize: 15,fontWeight:FontWeight.bold,overflow: TextOverflow.ellipsis),),
                                        ),
                                      ),SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ListTile(
                                          leading: Container(height: 50,width: 50,child:Icon(Icons.mail_outline_outlined,color: AppColor.tColor,),decoration:  BoxDecoration(color: AppColor.embkcolor,borderRadius: BorderRadius.circular(10)),),
                                          title: Text("Email",style: TextStyle(color: AppColor.t2Color,fontSize: 20,fontWeight:FontWeight.w400),),
                                          subtitle: Text("richard@example.com",style: TextStyle(color: AppColor.t2Color,fontSize: 15,fontWeight:FontWeight.bold,overflow: TextOverflow.ellipsis),),
                                        ),
                                      ),SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ListTile(
                                          leading: Container(height: 50,width: 50,child:Icon(Icons.mail_outline_outlined,color: AppColor.tColor,),decoration:  BoxDecoration(color: AppColor.embkcolor,borderRadius: BorderRadius.circular(10)),),
                                          title: Text("Email",style: TextStyle(color: AppColor.t2Color,fontSize: 20,fontWeight:FontWeight.w400),),
                                          subtitle: Text("richard@example.com",style: TextStyle(color: AppColor.t2Color,fontSize: 15,fontWeight:FontWeight.bold,overflow: TextOverflow.ellipsis),),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 30),
                        Column(
                          children: [
                            Container(
                              height: s.height * 1.2,
                              width: s.width * 0.6,
                              decoration: BoxDecoration(
                                color: AppColor.cardcolor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ],
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