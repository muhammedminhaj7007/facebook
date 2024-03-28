import 'package:facebook/colorpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'choosepassword.dart';
import 'main.dart';

class mobilenumber extends StatefulWidget {
  const mobilenumber({super.key});

  @override
  State<mobilenumber> createState() => _mobilenumberState();
}

class _mobilenumberState extends State<mobilenumber> {

  TextEditingController mobile_number=TextEditingController();

  final formKey=GlobalKey<FormState>();
  final phoneValidation=RegExp(r"[0-9]{10}$");
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
          "Mobile number",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: width*1.2,
                width: width*1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: width*0.30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Center(
                            child: Text(
                              "Enter your mobile number",
                              style:
                              TextStyle(fontSize: width * 0.05, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.center ,
                              "Enter the mobile number where you can be reached.\n"
                                  "No one else will see this on your profile",
                          style: TextStyle(
                            color: Colors.grey
                          ),)
                        ],
                      ),
                    ),
                    TextFormField(
                      controller:mobile_number ,
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
                        labelText: "Mobile Number",
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
                          mobile_number.text="";
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
                      onTap: (){
                      if(
                      phoneValidation.toString()!=""&&
                          formKey.currentState!.validate()
                      ) {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => choosepassword(),));
                      }else{
                        phoneValidation.toString() == "" ? ScaffoldMessenger.of(
                            context).showSnackBar(SnackBar(content: Text(
                            "please enter your mobile number"))) :
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text("enter your valid number")));
                      }
                    },
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
