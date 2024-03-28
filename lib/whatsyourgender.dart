import 'package:facebook/colorpage.dart';
import 'package:facebook/mobilenumber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class whatsyourgender extends StatefulWidget {
  const whatsyourgender({super.key});

  @override
  State<whatsyourgender> createState() => _whatsyourgenderState();
}

class _whatsyourgenderState extends State<whatsyourgender> {

  String Gender="m";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
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
            "Gender",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
                child: Column(
                  children: [
                    Text(
              "What,s your gender",
              style: TextStyle(
                      fontSize: width * 0.05, fontWeight: FontWeight.w600),),
                    SizedBox(
                      height: width*0.03,
                    ),
                    Text(
                      "You can change who sees your gennder on your profile later.",
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                  ],
                )),
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: width * 0.1,
                  width: width * 0.8,
                  // color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Female", style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: width * 0.04,
                      )),
                      Radio(
                        fillColor: MaterialStatePropertyAll(Colors.blue),
                        value: "f",
                        groupValue: Gender,
                        onChanged: (value) {
                          Gender = value!;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  endIndent: width * 0.10,
                  indent: width * 0.10,
                ),
                Container(
                  height: width * 0.1,
                  width: width * 0.8,
                  // color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Male",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: width * 0.04,
                          )
                      ),
                      Radio(
                        fillColor: MaterialStatePropertyAll(Colors.blue),
                        value: "m",
                        groupValue: Gender,
                        onChanged: (value) {
                          Gender = value!;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  endIndent: width * 0.10,
                  indent: width * 0.10,
                ),
                Container(
                  height: width * 0.1,
                  width: width * 0.8,
                  // color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Custom",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: width * 0.04,
                          )),
                      Radio(
                        fillColor: MaterialStatePropertyAll(Colors.blue),
                        value: "h",
                        groupValue: Gender,
                        onChanged: (value) {
                          Gender = value!;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width*0.8,
                  child: Row(
                    children: [
                      Text(
                        textAlign:TextAlign.left ,
                        "Select custome to choose another gender,\nor if you’d rather not say",
                        style: TextStyle(color: Colors.grey.shade400,fontSize: width*0.03 ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  endIndent: width * 0.10,
                  indent: width * 0.10,
                ),

              ],
            ),
            InkWell(
              onTap: () {
                if(Gender!=null
                ){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => mobilenumber(),));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter your Gender")));
                }

                setState(() {});
              },
              child: Container(
                height: width * 0.11,
                width: width * 0.73,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          colorpage.primarycolor,
                          colorpage.secondary
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
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
