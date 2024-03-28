import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class GamingPage extends StatefulWidget {
  const GamingPage({super.key});

  @override
  State<GamingPage> createState() => _GamingPageState();
}

class _GamingPageState extends State<GamingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("gaming",style: TextStyle(fontSize: width*0.15),))
        ],
      ),
    );;
  }
}
