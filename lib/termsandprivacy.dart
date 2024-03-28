import 'package:facebook/colorpage.dart';
import 'package:facebook/homescreen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class termsandprivacy extends StatefulWidget {
  const termsandprivacy({super.key});

  @override
  State<termsandprivacy> createState() => _termsandprivacyState();
}

class _termsandprivacyState extends State<termsandprivacy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
              setState(() {});
            },
            child: Container(
              child: Icon(
                CupertinoIcons.back,
                color: Colors.black,
              ),
            )),
        title: Text(
          "Terms & Privacy",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Center(
                        child: Text(
                          "Finishing signing up",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: width * 0.05),
                        ),
                      ),
                      SizedBox(
                        height: width*0.04,
                      ),
                      Text("By tapping Sign up, you agree to our ",
                          style: TextStyle(color: Colors.grey)),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Trems,Data Policy",
                            style: TextStyle(color: Colors.blueAccent)),
                        TextSpan(text: "and", style: TextStyle(color: Colors.grey)),
                        TextSpan(
                            text: "Cookies Policy",
                            style: TextStyle(color: Colors.blueAccent)),
                      ])),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                          builder: (context) => homescreen_1(),
                          ));
                          setState(() {});
                        },
                        child: Container(
                          height: width * 0.11,
                          width: width * 0.73,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    colorpage.secondary,
                                    colorpage.primarycolor
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight),
                              // color: Colors.blue,
                              borderRadius: BorderRadius.circular(width * 0.03)),
                          child: Center(
                              child: Text(
                            "Sign up",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: width*0.04,
                      ),
                      Text("Sign up without updating my contact",style: TextStyle(
                          color: Colors.blue
                      ),),
                    ],
                  ),

                ],
              ),
            ),
            Container(
              height: width*0.70,
              // color: Colors.red,
              width: width*1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding:  EdgeInsets.all(width*0.02),
                  child: Text(
                    "The Facebook Company is now Meta.While our Company name\n"
                        " is changeing,We are coutinuing to offer the same prodects,\n"
                        "includng the Facebook app from Meta.Our Data Policy and \n"
                        "Terms of Service Remain in effect, and this name change does\n"
                        "not affect how we use or share data.learn more about Meta and \n"
                        "Our vision for the Metaverse",
                    style: TextStyle(
                        fontSize: width*0.033,
                        fontWeight: FontWeight.w700
                    ),),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
