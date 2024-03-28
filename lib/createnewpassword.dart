import 'package:facebook/colorpage.dart';
import 'package:facebook/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homescreen1.dart';

class createnewpassword extends StatefulWidget {
  const createnewpassword({super.key});

  @override
  State<createnewpassword> createState() => _createnewpasswordState();
}

class _createnewpasswordState extends State<createnewpassword> {

  final formKey=GlobalKey<FormState>();
  final passwordvalidation=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  bool obscuretext=true;
  bool a = false;

  TextEditingController Newpassword=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            title: Text(
              "Reset your password",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
                setState(() {});
              },
              child: Container(
                // color: Colors.red,
                child: Container(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          body: Form(
             key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: width*1,
                    height: width*0.95,
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: width*0.5,
                          width:width*1,
                          // color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(child: Text("Create new password",style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: width*0.04
                              ),)),

                            Text("You will use this password to access your account.\nEnter a combination of at least six numbers, letters\nand punctuation marks.",
                                textAlign:TextAlign.center,style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        TextFormField(
                          controller:Newpassword ,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if(!passwordvalidation.hasMatch(value!)) {
                              return "Enter valid number";
                            }else{
                              return null;
                            }
                          },
                          decoration:InputDecoration(
                            constraints: BoxConstraints(
                              maxWidth: width * 0.8,
                            ),
                            labelText: "Password",
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                            hintText: "Enter Password",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: InkWell(onTap: () {
                              Newpassword.text="";
                              setState(() {

                              });
                            },
                                child: Icon(Icons.clear)),
                            enabledBorder: UnderlineInputBorder(

                            ),
                            focusedBorder: UnderlineInputBorder(

                            ),

                          ),
                        ),
                        InkWell(
                          onTap: ()
                          {
                            if(
                            Newpassword.toString()!=""&&
                                formKey.currentState!.validate()
                            ) {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => homescreen_1(),));
                            }else{
                              Newpassword.toString() == "" ? ScaffoldMessenger.of(
                                  context).showSnackBar(SnackBar(content: Text(
                                  "please enter your mobile number"))) :
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text("enter your valid details")));
                            }
                          },
                          // onTap: () {
                          //   if(Newpassword.text.isEmpty){
                          //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          //         content:
                          //         Text("Please enter your Password")));
                          //   }else if(Newpassword.text.isEmpty){
                          //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          //         content: Text("Please enter your Password")));
                          //   }else{
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => homescreen_1(),
                          //         ));
                          //   }
                          //
                          // },
                          child: Container(
                            width: width*0.7,
                            height: width*0.1,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(width*0.04),
                              gradient: LinearGradient(
                                  colors:[ colorpage.primarycolor,
                                    colorpage.secondary]),
                            ),
                            child: Center(child: Text("Next",style: TextStyle(
                                color: colorpage.whitecolor
                            ),)),

                          ),
                        ),
                        // TextFormField(
                        //   controller: Newpassword,
                        //   keyboardType: TextInputType.name,
                        //   cursorColor: Colors.black,
                        //   decoration: InputDecoration(
                        //     constraints: BoxConstraints(
                        //       maxWidth: width*0.8
                        //     ),
                        //     enabledBorder: UnderlineInputBorder(
                        //       borderSide: BorderSide(
                        //         width: width*0.005,
                        //         color: Colors.blueAccent
                        //       ),),
                        //    focusedBorder: UnderlineInputBorder(
                        //      borderSide: BorderSide(
                        //        width: width*0.005,
                        //         color: Colors.blue
                        //      ))),),
                        // InkWell(
                        //   onTap: () {
                        //     if (Newpassword.text.isNotEmpty) {
                        //       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => homescreen_1(),), (route) => false);
                        //     } else {
                        //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        //           content: Text("Plese enter your Secuid Password")));
                        //     }
                        //
                        //   },
                        //   child: Container(
                        //     height: width * 0.11,
                        //     width: width * 0.73,
                        //     decoration: BoxDecoration(
                        //         gradient: LinearGradient(
                        //             colors: [
                        //               colorpage.secondary,
                        //               colorpage.primarycolor
                        //             ],
                        //             begin: Alignment.centerLeft,
                        //             end: Alignment.centerRight),
                        //         // color: Colors.blue,
                        //         borderRadius: BorderRadius.circular(width * 0.03)),
                        //     child: Center(
                        //         child: Text(
                        //           "Log in",
                        //           style: TextStyle(
                        //               fontSize: width * 0.04,
                        //               fontWeight: FontWeight.w700,
                        //               color: Colors.white),
                        //         )),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
