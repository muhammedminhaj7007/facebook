import 'package:facebook/colorpage.dart';
import 'package:facebook/homescreen1.dart';
import 'package:facebook/image_page.dart';
import 'package:facebook/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'joinfacebook.dart';
import 'logincreen01.dart';
import 'loginscreen2.dart';

class profilelogin extends StatefulWidget {
  const profilelogin({super.key});

  @override
  State<profilelogin> createState() => _profileloginState();
}

class _profileloginState extends State<profilelogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: width * 0.35,
              ),
              Center(
                  child: Image(
                image: AssetImage(Imagepage.logo),
                height: width * 0.20,
                width: width * 0.3,
              )),
              SizedBox(
                height: width * 0.12,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => homescreen_1(),));
                  setState(() {

                  });
                },
                child: Container(
                  child: ListTile(
                    leading: Stack(
                      children: [
                        Container(
                          height: width * 0.3,
                          width: width * 0.17,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: width * 0.12,
                              width: width * 0.12,
                              decoration: BoxDecoration(),
                              child: Image(image: AssetImage(Imagepage.imagelogo)),
                            ),
                          ],
                        ),
                        Positioned(
                            bottom: width * 0.07,
                            right: width * 0.03,
                            child: CircleAvatar(
                              radius: width * 0.035,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: width * 0.03,
                                backgroundColor: Colors.red,
                                child: Text("7"),
                              ),
                            ))
                      ],
                    ),
                    title: Text("Sanjay Shendy"),
                    trailing: SvgPicture.asset(Imagepage.threedot),
                  ),
                ),
              ),
              SizedBox(
                height: width * 0.05,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => logincreen01(),));
                  setState(() {

                  });
                },
                child: ListTile(
                  leading: Image(
                    image: AssetImage(Imagepage.addicon),
                  ),
                  title: Text("Log Into Another Account"),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => logincreen01(),));
                  setState(() {

                  });
                },
                child: ListTile(
                  leading: Image(
                    image: AssetImage(Imagepage.serchicon),
                  ),
                  title: Text("Find Your Account"),
                ),
              ),
              SizedBox(
                height: width * 0.6,
              ),
              InkWell(
                onTap: () {
                setState(() {});
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => joinfacebook(),
                    ));
              },
                child: Container(
                    height: width * 0.12,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          colorpage.primarycolor,
                          colorpage.secondary,
                        ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                        // color: Colors.blue,
                        borderRadius: BorderRadius.circular(width * 0.04)),
                    child: Center(
                      child: Text(
                        "Create New Facebook Account",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
