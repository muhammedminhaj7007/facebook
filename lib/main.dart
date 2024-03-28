import 'package:facebook/homescreen1.dart';
import 'package:facebook/splashsreen.dart';
import 'package:flutter/material.dart';

import 'joinfacebook.dart';

void main() {
  runApp(const MyApp());
}

var width;
var height;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: splashscreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
