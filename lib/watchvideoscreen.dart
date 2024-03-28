import 'package:facebook/colorpage.dart';
import 'package:facebook/follow(wacthvideo).dart';
import 'package:facebook/foryou(watchvideo).dart';
import 'package:facebook/gaming(wacthvideo).dart';
import 'package:facebook/live(watchvideo).dart';
import 'package:facebook/music(watchvideo).dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class wacthvideoscreen extends StatefulWidget {
  const wacthvideoscreen({super.key});

  @override
  State<wacthvideoscreen> createState() => _wacthvideoscreenState();
}

class _wacthvideoscreenState extends State<wacthvideoscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
          child: Scaffold(
            body:Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(width*0.02),
                      child: Text("Watch",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: width*0.08
                      ),),
                    ),
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.all(width*0.02),
                  child: Container(
                    height: width*0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                      gradient: LinearGradient(colors: [
                        colorpage.primarycolor,
                        colorpage.secondary
                      ])
                    ),
                    child: TabBar(
                      physics: BouncingScrollPhysics(),
                      indicatorColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: [
                          Tab(child: Text("For you",style: TextStyle(fontSize: width*0.033),),),
                          Tab(child: Text("Live",style: TextStyle(fontSize: width*0.033),),),
                          Tab(child: Text("Music",style: TextStyle(fontSize: width*0.033),),),
                          Tab(child: Text("Gaming",style: TextStyle(fontSize: width*0.032),),),
                          Tab(child: Text("Follow",style: TextStyle(fontSize: width*0.033),),),
                        ]),
                  ),
                ),
             Expanded(
               child: TabBarView(children: [

                 foryou(),

                 LivePage(),

                 MusicPage(),

                 GamingPage(),

                 FollowPage()

               ]),
             ),
              ],
            ),
          )),
    );
  }
}
