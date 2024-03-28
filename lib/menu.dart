import 'package:facebook/colorpage.dart';
import 'package:facebook/profilelogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'image_page.dart';
import 'main.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {

  bool a=false;

  List A = [
    {
      "text": "Jobs",
      "image": Imagepage.job,
    },
    {
      "text": "COVID-19 information Center",
      "image": Imagepage.covid19,
    },
    {
      "text": "Marketplace",
      "image": Imagepage.glob,
    },
    {
      "text": "Friends",
      "image": Imagepage.friends,
    },
    {
      "text": "Events",
      "image": Imagepage.calender,
    },
    {
      "text": "Gaming",
      "image": Imagepage.gaming,
    },
    {
      "text": "Weather",
      "image": Imagepage.Cloud,
    },
    {
      "text": "Saved",
      "image": Imagepage.saved,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(
                left: width * 0.05,
                right: width * 0.05,
                top: width * 0.05,
                bottom: width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Menu",
                  style: TextStyle(
                      fontSize: width * 0.06, fontWeight: FontWeight.w700),
                ),
                Container(
                  height: width * 0.09,
                  width: width * 0.09,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(width * 0.03)),
                  child: Center(child: SvgPicture.asset(Imagepage.serch)),
                )
              ],
            ),
          ),
          Container(
            height: width * 0.1,
            child: Row(
              children: [
                SizedBox(
                  width: width * 0.04,
                ),
                Text("Shorctus"),
              ],
            ),
          ),
          Container(
            height: height * 0.5,
            width: width * 1,
// color: Colors.blue,
            child: ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: width * 0.1,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(width * 0.03),
                            border: Border.all(color: Colors.blue)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              A[index]["text"],
                              style: TextStyle(color: Colors.blue),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            SvgPicture.asset(A[index]["image"])
                          ],
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: width * 0.02,
                  );
                },
                itemCount: A.length),
          ),
          InkWell(
            onTap: () {
              a=!a;
              setState(() {

              });
            },
            child: Container(
              height: width * 0.1,
              width: width * 0.9,
              child: Center(
                  child:
                  Text(
               a==true? "See less":"See All",
                style: TextStyle(color: Colors.black),
              )),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width * 0.03),
                  border: Border.all(color: Colors.grey.shade600)),
            ),
          ),
       a==true?   Container(
            height: width * 0.8,
            width: width * 1,
            child: Column(
              children: [
                Divider(
                  color: Colors.grey.shade500,
                  height: width * 0.1,
                  thickness: width * 0.002,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Community resources"),
                    SizedBox(
                      width: width * 0.015,
                    ),
                    SvgPicture.asset(Imagepage.community),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade500,
                  height: width * 0.1,
                  thickness: width * 0.002,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Help & Support"),
                    SizedBox(
                      width: width * 0.015,
                    ),
                    SvgPicture.asset(Imagepage.lightbulb),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade500,
                  height: width * 0.1,
                  thickness: width * 0.002,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Settings & Privacy"),
                    SizedBox(
                      width: width * 0.015,
                    ),
                    SvgPicture.asset(Imagepage.settings),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade500,
                  height: width * 0.1,
                  thickness: width * 0.002,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      anchorPoint: Offset(2, 5),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(width * 0.05)),
                      builder: (context) {
                        return Container(
                          height: width * 0.6,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.circular(width * 0.05)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                    "Are you sure you want to log out?",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                              ),
                              SizedBox(
                                height: width * 0.04,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            profilelogin(),
                                      ),
                                          (route) => false);
                                },
                                child: Container(
                                  height: width * 0.1,
                                  width: width * 0.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          width * 0.03),
                                      gradient: LinearGradient(colors: [
                                        colorpage.primarycolor,
                                        colorpage.secondary
                                      ])),
                                  child: Center(
                                      child: Text(
                                        "YES",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: width * 0.03,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: width * 0.1,
                                  width: width * 0.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          width * 0.03),
                                      gradient: LinearGradient(colors: [
                                        colorpage.primarycolor,
                                        colorpage.secondary
                                      ])),
                                  child: Center(
                                      child: Text(
                                        "NO",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: width*0.23,
                    width: width*1,
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Log out",
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(
                          width: width * 0.015,
                        ),
                        Icon(
                          Icons.logout,
                          color: Colors.red,
                          size: width * 0.08,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ):
       SizedBox(),
        ]),
      ),
    ));
  }
}
