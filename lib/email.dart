import 'package:facebook/colorpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'code.dart';

class forgot_pass_email extends StatefulWidget {
  const forgot_pass_email({super.key});

  @override
  State<forgot_pass_email> createState() => _forgot_pass_emailState();
}

class _forgot_pass_emailState extends State<forgot_pass_email> {

  final formKey = GlobalKey<FormState>();
  TextEditingController emailaddress=TextEditingController();
  final emailValidation = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+gmail.com");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "Find Your Account",
          style: TextStyle(color: Colors.black),
        ),
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
          ),
        ),
      ),
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: width*0.80,
                    width: width*1.10,
                    // color: Colors.yellow,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(child: Text("Enter your email address",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,fontSize: width*0.05
                        ),)),
                        TextFormField(
                          // textAlign: TextAlign.start,
                          controller: emailaddress,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (!emailValidation.hasMatch(value!)) {
                              return "enter valid email";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            suffixIcon: InkWell(onTap: () {
                              emailaddress.text="";
                              setState(() {

                              });
                            },
                                child: Icon(Icons.clear)),
                            constraints: BoxConstraints(maxWidth: width*0.8),
                              labelText: "Email Address",
                              labelStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              hintText: "enter Phone or Email",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 14),
                              enabledBorder: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder()),
                        ),
                        InkWell(
                          onTap: ()
                          {
                            if(
                            emailaddress.toString()!=""&&
                                formKey.currentState!.validate()
                            ) {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => otp_verification_code(),));
                            }else{
                              emailaddress.toString() == "" ? ScaffoldMessenger.of(
                                  context).showSnackBar(SnackBar(content: Text(
                                  "please enter your mobile number"))) :
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text("enter your valid details")));
                            }
                          },
                          child: Container(
                            width: width * 0.7,
                            height: width * 0.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.04),
                              gradient: LinearGradient(colors: [
                                colorpage.primarycolor,
                                colorpage.secondary
                              ]),
                            ),
                            child: Center(
                                child: Text(
                                  "Next",
                                  style: TextStyle(color: colorpage.whitecolor),
                                )),
                          ),
                        ),
                        // TextFormField(
                        //   controller: emailaddress,
                        //   keyboardType: TextInputType.emailAddress,
                        //   cursorColor: Colors.black,
                        //   decoration: InputDecoration(
                        //     focusedBorder: UnderlineInputBorder(
                        //       borderSide: BorderSide(
                        //         color: Colors.black,
                        //       ),
                        //     ),
                        //     constraints: BoxConstraints(
                        //       maxWidth: width*0.8
                        //     ),
                        //
                        //   suffixIcon: InkWell(
                        //     onTap: () {
                        //       emailaddress.clear();
                        //       setState(() {
                        //
                        //       });
                        //     },
                        //       child: Icon(
                        //           CupertinoIcons.clear,color: Colors.black,
                        //       ))),
                        // ),
                        // InkWell(
                        //   onTap: () {
                        //     setState(() {});
                        //   },
                        //   child: InkWell(
                        //     onTap: () {
                        //       if(
                        //       emailaddress.text.isNotEmpty){
                        //         Navigator.push(context, MaterialPageRoute(builder: (context) =>  otp_verification_code(),));
                        //       }else{
                        //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Plese enter your email address")));
                        //       }
                        //     },
                        //     child: Container(
                        //       height: width * 0.11,
                        //       width: width * 0.73,
                        //       decoration: BoxDecoration(
                        //           gradient: LinearGradient(
                        //               colors: [
                        //                 colorpage.secondary,
                        //                 colorpage.primarycolor
                        //               ],
                        //               begin: Alignment.centerLeft,
                        //               end: Alignment.centerRight),
                        //           // color: Colors.blue,
                        //           borderRadius: BorderRadius.circular(width * 0.03)),
                        //       child: Center(
                        //           child: Text(
                        //             "Find Your Account",
                        //             style: TextStyle(
                        //                 fontSize: width * 0.04,
                        //                 fontWeight: FontWeight.w700,
                        //                 color: Colors.white),
                        //           )),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Container(
                    height: width * 0.82,
                    width: width * 1.10,
                    // color: Colors.yellow,
                    child: Center(
                      child: Text(
                        "Search by number insted",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    ));
  }
}
