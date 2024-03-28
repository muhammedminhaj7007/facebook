import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'image_page.dart';
import 'main.dart';

class Myisy_hupheri extends StatefulWidget {
  const Myisy_hupheri({super.key});

  @override
  State<Myisy_hupheri> createState() => _Myisy_hupheriState();
}

class _Myisy_hupheriState extends State<Myisy_hupheri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  setState(() {});
                },
                child: Icon(
                  CupertinoIcons.back,
                  color: Colors.black,
                )),
            backgroundColor: Colors.white,
            elevation: 1,
          ),
      body: Column(
        children: [
          Container(
            height: width*0.5,
            width: width*1,
            // color: Colors.red,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Imagepage.chandhinipic,width: width*0.25,),
                SizedBox(
                  height: width*0.04,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text("NAME : Maisy Hupheri",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.05
              ),),
              SizedBox(
                height: width*0.03,
              ),
              Text("PLACE : New Delhi,",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.05
              ),),
              SizedBox(
                height: width*0.03,
              ),
              Text("NUMBER : 123456789",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.05
              ),),
              SizedBox(
                height: width*0.03,
              ),
              Text("PIN CODE : 123456",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: width*0.05
              ),)

            ],
          )
        ],

      ),
    );
  }
}
