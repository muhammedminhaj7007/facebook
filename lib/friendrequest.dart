import 'package:facebook/colorpage.dart';
import 'package:facebook/image_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class friendrequest extends StatefulWidget {
  const friendrequest({super.key});

  @override
  State<friendrequest> createState() => _friendrequestState();
}

class _friendrequestState extends State<friendrequest> {

  bool A=false;

  List Request = [
    {
      "Image": Imagepage.kiranpic,
      "text":"Kiran Pawar",
      "text1":" 9w",
      "text2":"1 mutual friend",
      "text3":"Confirm",
      "text4":"Delete",
    },
    {
      "Image": Imagepage.blankpic,
      "text":"Chandresh Yadav",
      "text1":" 10w",
      "text2":"20 mutual friends",
      "text3":"Confirm",
      "text4":"Delete",
    },
    {
      "Image": Imagepage.marvinpic,
      "text":"Marvin McKevirn",
      "text1":" 12w",
      "text2":"1 mutual friend",
      "text3":"Confirm",
      "text4":"Delete",
    },
    {
      "Image": Imagepage.bhumi,
      "text":"Bhumi Patel",
      "text1":" 19w",
      "text2":"19 mutual friend",
      "text3":"Confirm",
      "text4":"Delete",
    },
    {
      "Image": Imagepage.kairapic,
      "text":"Kiara Parmar",
      "text1":" 20w",
      "text2":"37 mutual friends",
      "text3":"Confirm",
      "text4":"Delete",
    },
    {
      "Image": Imagepage.chandhinipic,
      "text":"Chandani ",
      "text1":" 24w",
      "text2":"24 mutual friends",
      "text3":"Confirm",
      "text4":"Delete",
    },
    {
      "Image": Imagepage.girlprofile,
      "text":"Chandani gruva",
      "text1":" 2w",
      "text2":"24 mutual friends",
      "text3":"Confirm",
      "text4":"Delete",
    },
    {
      "Image": Imagepage.avatar,
      "text":" chandgu",
      "text1":" 4w",
      "text2":"24 mutual friends",
      "text3":"Confirm",
      "text4":"Delete",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Friends",
                        style: TextStyle(
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.w600),
                      ),
                      SvgPicture.asset(Imagepage.serch)
                    ],
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: width * 0.03),
                    Container(
                      height: width * 0.10,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                colorpage.primarycolor,
                                colorpage.secondary
                              ],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft),
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(width * 0.03)),
                      child: Center(
                          child: Text(
                        "Suggestions",
                        style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                    ),
                    SizedBox(width: width * 0.03),
                    Container(
                      height: width * 0.10,
                      width: width * 0.25,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                colorpage.primarycolor,
                                colorpage.secondary
                              ],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft),
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(width * 0.03)),
                      child: Center(
                          child: Text(
                        "Your Friends",
                        style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: width * 0.002,
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(
                    children: [
                      Text(
                        "Friend request  ",
                        style: TextStyle(
                            fontSize: width * 0.05, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "440",
                        style: TextStyle(
                            fontSize: width * 0.05, fontWeight: FontWeight.w500,color: Colors.red.shade600),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      A=!A;
                      setState(() {

                      });
                    },

                    child: Text(
                     A==false? "See All":"See Less",
                      style: TextStyle(
                          fontSize: width * 0.05, fontWeight: FontWeight.w500,color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: height * 1,
              width: width * 1,
              // color: Colors.red,
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                            leading: Container(
                              height: width*0.2,
                                width: width*0.2,
                                child: Image(image: AssetImage(Request[index]["Image"]),width: width*0.2)
                            ),
                        title: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(Request[index]["text"]),
                            Text(Request[index]["text1"]),
                          ],
                        ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Request[index]["text2"]),
                              Row(
                                children: [
                                  Container(
                                    height: width * 0.09,
                                    width: width * 0.25,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              colorpage.primarycolor,
                                              colorpage.secondary
                                            ],
                                            begin: Alignment.centerRight,
                                            end: Alignment.centerLeft),
                                        // color: Colors.blue,
                                        borderRadius: BorderRadius.circular(width * 0.03)),
                                    child: Center(
                                        child: Text(
                                        Request[index]["text3"],style: TextStyle(
                                          fontSize: width * 0.04,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white
                                        ),
                                        )),
                                  ),
                                  SizedBox(width: width*0.02),
                                  InkWell(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text("Are you sure you want to delete ?",style: TextStyle(
                                                fontSize: width*0.04),),
                                              actions: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: width*0.09,
                                                      width: width*0.30,
                                                      decoration: BoxDecoration(
                                                        gradient: LinearGradient(colors: [colorpage.secondary,
                                                          colorpage.primarycolor]),
                                                        borderRadius: BorderRadius.circular(width*0.03),
                                                      ),
                                                      child: Center(child: Text("Yes",style: TextStyle(
                                                        color: Colors.white
                                                      ),)),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Container(
                                                        height: width*0.09,
                                                        width: width*0.30,
                                                        decoration: BoxDecoration(
                                                          gradient: LinearGradient(colors: [colorpage.secondary,
                                                            colorpage.primarycolor]),
                                                          borderRadius: BorderRadius.circular(width*0.03),
                                                        ),
                                                        child: Center(child: Text("No",style: TextStyle(
                                                            color: Colors.white
                                                        ),)),
                                                      ),
                                                    ),

                                                  ],
                                                ),

                                              ],

                                            );
                                          },
                                      );
                                    },
                                    child: Container(
                                      height: width * 0.09,
                                      width: width * 0.25,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade400,
                                          borderRadius: BorderRadius.circular(width * 0.03)),
                                      child: Center(
                                          child: Text(
                                            Request[index]["text4"],style: TextStyle(
                                              fontSize: width * 0.04,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white
                                          ),
                                          )),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),

                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox();
                  },
                  itemCount: A==true?Request.length:5),
            )
          ],
        ),
      ),
    );
  }
}
