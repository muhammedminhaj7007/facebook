import 'package:facebook/colorpage.dart';
import 'package:facebook/image_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  List listtile=[
    {
      "list1":Imagepage.Avathar1,
      "list2":"Darrell Trivedi has a new story  up.\n What’s your reaction?",
      "list3":Imagepage.images5,
      "list4":"2 hours ago",
      "color":colorpage.bluelight
    },
    {
      "list1":Imagepage.Avathar2,
      "list2":"Darrell Trivedi has a new story  up.\n What’s your reaction?",
      "list3":Imagepage.images5,
      "list4":"2 hours ago",
      "color":colorpage.bluelight
    },
    {
      "list1":Imagepage.avatar,
      "list2":"Darrell Trivedi has a new story  up.\n What’s your reaction?",
      "list3":Imagepage.images5,
      "list4":"2 hours ago",
      "color":colorpage.bluelight
    },
    {
      "list1":Imagepage.Avathar3,
      "list2":"Darrell Trivedi has a new story  up.\n What’s your reaction?",
      "list3":Imagepage.images5,
      "list4":"2 hours ago",
      "color":colorpage.bluelight
    },
    {
      "list1":Imagepage.Avathar4,
      "list2":"Darrell Trivedi has a new story  up.\n What’s your reaction?",
      "list3":Imagepage.images5,
      "list4":"2 hours ago",
      "color":colorpage.whitecolor
    },
    {
      "list1":Imagepage.Avathar5,
      "list2":"Darrell Trivedi has a new story  up.\n What’s your reaction?",
      "list3":Imagepage.images5,
      "list4":"2 hours ago",
      "color":colorpage.whitecolor
    },
  ];
  List listtile1=[
    {
      "list1":Imagepage.Avathar1,
      "list2":"Darrell Trivedi has a new story  up.\n What’s your reaction?",
      "list3":Imagepage.images5,
      "list4":"2 hours ago",
      "color":colorpage.bluelight
    },
    {
      "list1":Imagepage.Avathar2,
      "list2":"Darrell Trivedi has a new story  up.\n What’s your reaction?",
      "list3":Imagepage.images5,
      "list4":"2 hours ago",
      "color":colorpage.bluelight
    },
    {
      "list1":Imagepage.avatar,
      "list2":"Darrell Trivedi has a new story  up.\n What’s your reaction?",
      "list3":Imagepage.images5,
      "list4":"2 hours ago",
      "color":colorpage.bluelight
    },
    {
      "list1":Imagepage.Avathar3,
      "list2":"Darrell Trivedi has a new story  up.\n What’s your reaction?",
      "list3":Imagepage.images5,
      "list4":"2 hours ago",
      "color":colorpage.bluelight
    },
    {
      "list1":Imagepage.Avathar4,
      "list2":"Darrell Trivedi has a new story  up.\n What’s your reaction?",
      "list3":Imagepage.images5,
      "list4":"2 hours ago",
      "color":colorpage.whitecolor
    },
    {
      "list1":Imagepage.Avathar5,
      "list2":"Darrell Trivedi has a new story  up.\n What’s your reaction?",
      "list3":Imagepage.images5,
      "list4":"2 hours ago",
      "color":colorpage.whitecolor
    },
  ];
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.all(width*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Notifications",style: TextStyle(
                      fontSize: width*0.08,
                      fontWeight: FontWeight.w600
                    ),),
                    SvgPicture.asset(Imagepage.serch,width: width*0.09,)
                  ],
                ),
              ),
             SizedBox(
               height: width*0.04,
             ),
             Row(
               children: [
                 Container(
                   width: width*1,
                   height: width*0.12,
                   color: colorpage.bluelight,
                   child: Padding(
                     padding:  EdgeInsets.all(width*0.02),
                     child: Text("New",style: TextStyle(
                       fontSize: width*0.07,
                       fontWeight: FontWeight.w400
                     ),),
                   ),
                 ),
               ],
             ),
             Container(
                 height: width*1.1,
                  // color: Colors.red,
                width: width*1,
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Column(
                         children: [
                           ListTile(
                             tileColor: listtile1[index]["color"],
                             leading:Image(
                                   image: AssetImage(listtile[index]["list1"]),
                                 ),
                           title: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                               Text(
                                 listtile[index]["list2"],style: TextStyle(
                                 fontSize: width*0.04
                               ),
                               ),
                               Image(image: AssetImage(listtile[index]["list3"]),width: width*0.06,color: Colors.black,),
                             ],
                           ),

                           subtitle:Padding(
                             padding:  EdgeInsets.only(top: width*0.01),
                             child: Text(listtile[index]["list4"]),
                           ) ,),

                         ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox();
                    },
                    itemCount: listtile.length),
              ),
              Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(width*0.02),
                    child: Text("Earlier",style: TextStyle(
                        fontSize: width*0.07,
                        fontWeight: FontWeight.w400
                    ),),
                  ),
                ],
              ),
              SizedBox(
                height: width*0.03,
              ),
              Container(
                height: width*1.1,
                // color: Colors.red,
                width: width*1,
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            tileColor: listtile1[index]["color"],
                            leading:Image(
                              image: AssetImage(listtile1[index]["list1"]),
                            ),
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  listtile1[index]["list2"],style: TextStyle(
                                    fontSize: width*0.04
                                ),
                                ),
                                Image(image: AssetImage(listtile1[index]["list3"]),width: width*0.06,color: Colors.black,)
                              ],
                            ),
                            subtitle:Padding(
                              padding:  EdgeInsets.only(top: width*0.01),
                              child: Text(listtile1[index]["list4"]),
                            ) ,),

                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox();
                    },
                    itemCount: listtile1.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
