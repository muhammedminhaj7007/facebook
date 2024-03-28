import 'package:facebook/colorpage.dart';
import 'package:facebook/live(watchvideo).dart';
import 'package:facebook/messanger.dart';
import 'package:facebook/music(watchvideo).dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'main.dart';

class bottomnavigation extends StatefulWidget {
  const bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {

  int index=0;

  List a=[

  messanger(),
  LivePage(),
  MusicPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: a[index],
      bottomNavigationBar: BottomNavigationBar(
          iconSize: width*0.06,
          backgroundColor: Colors.grey.shade400,
          selectedFontSize: 15,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(
              fontWeight:FontWeight.bold
          ),
          unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w600
          ),
          onTap: (value) {
            index=value;
            setState(() {

            });
          },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outlined),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.groups_rounded),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.assistant_navigation),label: "")
          ]
      ),
    ));
  }
}
