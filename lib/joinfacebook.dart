import 'package:facebook/colorpage.dart';
import 'package:facebook/image_page.dart';
import 'package:facebook/main.dart';
import 'package:facebook/whatsyourname.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'logincreen01.dart';

class joinfacebook extends StatefulWidget {
  const joinfacebook({super.key});

  @override
  State<joinfacebook> createState() => _joinfacebookState();
}

class _joinfacebookState extends State<joinfacebook> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
              setState(() {});
            },
            child: Container(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            )),
        title: Text(
          "Create account",
          style: TextStyle(color: Colors.black),
        ),

      ),
      body: Container(
        height: height * 0.9,
        // color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: width * 0.6,
              width: width * 1,
              // color: Colors.red,
              child: Image(
                image: AssetImage(Imagepage.illustration),
              ),
            ),
            Container(
              height: width * 0.6,
              width: width * 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Join Facebook",
                    style: TextStyle(
                        fontSize: width * 0.05, fontWeight: FontWeight.w700),
                  ),
                  Column(
                    children: [
                      Text(
                        "We’ll help you",
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      Text(
                        "create a new account in a few easy steps.",
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                  SizedBox(height: width * 0.05),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => whatsyourname(),
                          ));
                      setState(() {});
                    },
                    child: Container(
                      height: width * 0.11,
                      width: width * 0.73,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                colorpage.primarycolor,
                                colorpage.secondary,
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(width * 0.03)),
                      child: Center(
                          child: Text(
                            "Next",
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: width * 0.5,
            ),
            Container(
              height: width * 0.1,
              width: width * 1,
              child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => logincreen01(),));
                      setState(() {

                      });
                    },
                    child: Text(
                "Already have an account?",
                style: TextStyle(color: Colors.blue),
              ),
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
