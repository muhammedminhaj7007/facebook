import 'package:facebook/colorpage.dart';
import 'package:facebook/main.dart';
import 'package:facebook/termsandprivacy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mobilenumber.dart';

class choosepassword extends StatefulWidget {
  const choosepassword({super.key});

  @override
  State<choosepassword> createState() => _choosepasswordState();
}

class _choosepasswordState extends State<choosepassword> {

  final formKey=GlobalKey<FormState>();
  final passwordvalidation=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  TextEditingController Password = TextEditingController();

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
                CupertinoIcons.back,
                color: Colors.black,
              ),
            )),
        title: Text(
          "Password",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: width * 1.2,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: width * 0.30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Center(
                            child: Text(
                              "Choose a password",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 0.05),
                            ),
                          ),
                          Text("Create a password at least with 6 chaeacters.\n"
                              "It should be something others couldn’t guess."),
                        ],
                      ),
                    ),
                    TextFormField(
                      controller: Password,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.multiline,
                      cursorColor: Colors.black,
                      obscureText: true,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if(!passwordvalidation.hasMatch(value!)) {
                          return "Enter valid Password";
                        }else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () {
                            Password.text="";
                          },
                          child: Icon(
                              CupertinoIcons.clear
                          ),
                        ),
                          constraints: BoxConstraints(
                            maxWidth: width * 0.8,
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.black),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                    InkWell(
                      onTap: (){
                        if(
                            formKey.currentState!.validate()
                        ) {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => termsandprivacy(),));
                        }else{
                          Password.toString() == "" ? ScaffoldMessenger.of(
                              context).showSnackBar(SnackBar(content: Text(
                              "please enter your password"))) :
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text("enter your valid Password")));
                        }
                      },
                      child: Container(
                        width: width*0.7,
                        height: width*0.2,
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
