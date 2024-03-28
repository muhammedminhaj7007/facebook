import 'package:facebook/colorpage.dart';
import 'package:facebook/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'email.dart';

class forgot_pass_mob extends StatefulWidget {
  const forgot_pass_mob({super.key});

  @override
  State<forgot_pass_mob> createState() => _forgot_pass_mobState();
}

class _forgot_pass_mobState extends State<forgot_pass_mob> {

  TextEditingController phoneController=TextEditingController();

  final formKey=GlobalKey<FormState>();
  final phoneValidation=RegExp(r"[0-9]{10}$");

  @override

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: Container(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Find Your Account",
          style: TextStyle(color: Colors.black),
        ),
        // title: ,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: width * 0.80,
                width: width * 1.10,
                // color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                        child: Text(
                      "Enter your phone number",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: width * 0.05),
                    )),
                    TextFormField(
                      controller:phoneController ,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if(!phoneValidation.hasMatch(value!)) {
                          return "Enter valid number";
                        }else{
                          return null;
                        }
                      },
                      decoration:InputDecoration(
                        constraints: BoxConstraints(
                          maxWidth: width * 0.8,
                        ),
                        labelText: "Phone Number",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        hintText: "enter number",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        suffixIcon: InkWell(onTap: () {
                          phoneController.text="";
                          setState(() {

                          });
                        },
                            child: Icon(Icons.clear)),
                        enabledBorder: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(

                        ),

                      ),
                    ),
                    InkWell(
                      onTap: ()
                    {
                      if(
                      phoneValidation.toString()!=""&&
                          formKey.currentState!.validate()
                      ) {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => forgot_pass_email(),));
                      }else{
                        phoneValidation.toString() == "" ? ScaffoldMessenger.of(
                            context).showSnackBar(SnackBar(content: Text(
                            "please enter your mobile number"))) :
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text("enter your valid details")));
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
                          "Find Your Account",
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
                height: width * 0.82,
                width: width * 1.10,
                // color: Colors.yellow,
                child: Center(
                  child: Text(
                    "Search by email insted",
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
