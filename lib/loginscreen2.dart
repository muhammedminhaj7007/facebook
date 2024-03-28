import 'package:facebook/colorpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'image_page.dart';
import 'main.dart';

class loginscreen2 extends StatefulWidget {
  const loginscreen2({super.key});

  @override
  State<loginscreen2> createState() => _loginscreen2State();
}

class _loginscreen2State extends State<loginscreen2> {

  TextEditingController phoneoremail=TextEditingController();
  TextEditingController password=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                    children: [
                      Container(
                        width: width * 1,
                        height: width*0.8,
                        // color: Colors.red,
                        child: Image(
                            image: AssetImage(Imagepage.lockscreen1), fit: BoxFit.fill),
                      ),
                      Image(image: AssetImage(Imagepage.facebook4)),
                      Positioned(
                          left: width*0.45,
                          bottom: width*0.10,
                          child: Container(
                            width: width*0.15,
                          ))
                    ]
                ),
                Container(
                  width: width*0.8,
                  height: width*0.4,
                  // color: Colors.yellow,
                  child: Column(
                    children: [
                      TextFormField(
                          controller: phoneoremail,
                          keyboardType: TextInputType.text,
                          textCapitalization: TextCapitalization.characters,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              // labelText: "Phone or Email",
                              // labelStyle: TextStyle(
                              //     color: Colors.black38
                              // ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black))
                          )
                      ),
                      TextFormField(
                          controller: password,
                          keyboardType: TextInputType.text,
                          textCapitalization: TextCapitalization.characters,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              // labelText: "Password",
                              // labelStyle: TextStyle(
                              //     color: Colors.black38
                              // ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black))
                          )
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => loginscreen2(),));
                    setState(() {

                    });
                  },
                  child: Container(
                    height: width * 0.11,
                    width: width * 0.73,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              colorpage.secondary,
                              colorpage.primarycolor
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        // color: Colors.blue,
                        borderRadius: BorderRadius.circular(width * 0.03)),
                    child: Center(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )),
                  ),
                ),
                SizedBox(
                  height: width*0.04,
                ),
                Text("Forgot Password?",style: TextStyle(color: Colors.blueAccent,
                    fontSize: width*0.03,fontWeight: FontWeight.w500 ),),
                Container(
                  height: width*0.30,
                  // color: Colors.yellow,
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          indent: width*0.12,
                          endIndent: width*0.03,
                        ),
                      ),
                      Text("OR"),
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          indent: width*0.03,
                          endIndent: width*0.12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: width*0.08,
                  width: width*0.6,
                  child: Center(child: Text("Create new Facebook account")),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.blue
                    ),
                    borderRadius: BorderRadius.circular(width*0.03),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
