import 'package:facebook/colorpage.dart';
import 'package:facebook/image_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'createnewpassword.dart';
import 'main.dart';

class otp_verification_code extends StatefulWidget {
  const otp_verification_code({super.key});

  @override
  State<otp_verification_code> createState() => _otp_verification_codeState();
}

class _otp_verification_codeState extends State<otp_verification_code> {

  final otpVerification = RegExp("");
  TextEditingController otpcode = TextEditingController();

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
        child: Padding(
          padding: EdgeInsets.only(
              top: width * 0.1, left: width * 0.08, right: width * 0.08),
          child: Column(
            children: [
              Container(
                height: width * 0.85,
                width: width * 1.10,
                // color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Enter the code we sent to \n"
                      "Sanjayshendy123@gmail.com",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: width * 0.05),
                    ),
                    Text(
                      "We sent 6 digit code to your email address.",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    TextFormField(
                      controller: otpcode,
                      keyboardType: TextInputType.phone,
                      cursorColor: Colors.black,
                      inputFormatters: [LengthLimitingTextInputFormatter(8)],
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (!otpVerification.hasMatch(value!)) {
                          return "enter valid OTP";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        labelText: "Enter Code",
                        constraints: BoxConstraints(maxWidth: width * 0.7),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (otpcode.text.isNotEmpty ) {
                          if (otpcode.text.length >= 8) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => createnewpassword(),
                                ));
                          }
                          else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("Plese enter your Secuid OTP")));
                          }
                        }
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
                  ],
                ),
              ),
              Container(
                height: width * 0.2,
                width: width * 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(Imagepage.email),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          "Send email again",
                          style: TextStyle(fontSize: width * 0.040),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(Imagepage.message),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text("Get code via SMS",
                            style: TextStyle(fontSize: width * 0.040))
                      ],
                    ),
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
