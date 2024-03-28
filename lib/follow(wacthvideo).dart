import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class FollowPage extends StatefulWidget {
  const FollowPage({super.key});

  @override
  State<FollowPage> createState() => _FollowPageState();
}

class _FollowPageState extends State<FollowPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("follow",style: TextStyle(fontSize: width*0.15),))
        ],
      ),
    );;
  }
}
