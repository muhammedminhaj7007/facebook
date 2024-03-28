import 'package:facebook/bottomnavigtionchat.dart';
import 'package:facebook/colorpage.dart';
import 'package:facebook/friendrequest.dart';
import 'package:facebook/image_page.dart';
import 'package:facebook/personprofile.dart';
import 'package:facebook/watchvideoscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'homescreen2.dart';
import 'main.dart';
import 'menu.dart';
import 'messanger.dart';
import 'notification.dart';

class homescreen_1 extends StatefulWidget {
  const homescreen_1({super.key});

  @override
  State<homescreen_1> createState() => _homescreen_1State();
}

class _homescreen_1State extends State<homescreen_1> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GradientText(
                "facebook",
                colors: [colorpage.primarycolor, colorpage.secondary],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => bottomnavigation(),));
                },
                  child: SvgPicture.asset("images/fb_messenger.svg")),
            ],
          ),
          backgroundColor: Colors.white10,
          elevation: 0,
          bottom: TabBar(
              tabs: [
            Tab(child: SvgPicture.asset("images/Home active.svg")),
            Tab(child: SvgPicture.asset("images/Groupicon.svg"),),
            Tab(child: SvgPicture.asset("images/Personal Icon (1).svg")),
            Tab(child: SvgPicture.asset("images/Video icon.svg")),
            Tab(child: SvgPicture.asset("images/bellIcon.svg")),
            Tab(child: SvgPicture.asset("images/Menu Icon.svg")),
          ]),
        ),
        body: TabBarView(children: [
          homescreen2(),
          friendrequest(),
          personfrofile(),
          wacthvideoscreen(),
          notification(),
          menu(),
        ]),
      ),
    ));
  }
}
