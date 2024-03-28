import 'package:facebook/colorpage.dart';
import 'package:facebook/profilelogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'image_page.dart';
import 'main.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3))
        .then((value) => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => profilelogin(),
            ),
            (route) => false));
    super.initState();
     }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: width,
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: height*0.05,
                ),
                Column(
                  children: [
                    Image(
                      image: AssetImage(Imagepage.logo),
                    ),
                    GradientText(
                      "facebook",
                      style: TextStyle(
                          fontSize: width * 0.1, fontWeight: FontWeight.w700),
                      colors: [
                        colorpage.secondary,
                        colorpage.primarycolor
                      ],
                    ),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text("From")),
                    SizedBox(
                      height: width * 0.03,
                    ),
                    Center(
                      child: Image(
                        image: AssetImage(Imagepage.meta),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
