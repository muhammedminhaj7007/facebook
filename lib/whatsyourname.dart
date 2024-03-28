import 'package:facebook/colorpage.dart';
import 'package:facebook/main.dart';
import 'package:facebook/whatsyourbirthday.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class whatsyourname extends StatefulWidget {
  const whatsyourname({super.key});

  @override
  State<whatsyourname> createState() => whatsyournameState();
}

class whatsyournameState extends State<whatsyourname> {

  bool a = false;

  TextEditingController first_name_controller = TextEditingController();
  TextEditingController first_second_controller = TextEditingController();

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
              child: Container(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
            )),
        title: Text(
          "Create account",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: width * 0.80,
              width: width * 1,
              // color: Colors.red,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "What’s your name?",
                          style: TextStyle(
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text("Enter the name you use in real life.",
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: width * 0.03,
                        left: width * 0.03,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: first_name_controller,
                              keyboardType: TextInputType.name,
                              textCapitalization: TextCapitalization.characters,
                              textInputAction: TextInputAction.done,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                suffixIcon: InkWell(
                                  onTap: () {
                                    first_name_controller.text = "";
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.clear,
                                    color: Colors.black,
                                  ),
                                ),
                                labelText: "First Name",
                                labelStyle: TextStyle(color: Colors.black),
                                // border: UnderlineInputBorder(borderSide: BorderSide(
                                //   color: Colors.black,
                                // )),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black)),
                              ),
                            ),
                          ),
                          SizedBox(width: width * 0.04),
                          Expanded(
                            child: TextFormField(
                              controller: first_second_controller,
                              keyboardType: TextInputType.name,
                              textCapitalization: TextCapitalization.characters,
                              textInputAction: TextInputAction.done,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                suffixIcon: InkWell(
                                  onTap: () {
                                    first_second_controller.text = "";
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.clear,
                                    color: Colors.black,
                                  ),
                                ),
                                labelText: "Last Name",
                                labelStyle: TextStyle(color: Colors.black),
                                // border: UnderlineInputBorder(borderSide: BorderSide(
                                //   color: Colors.black,
                                // )),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if(
                        first_name_controller.text.isNotEmpty&&
                            first_second_controller.text.isNotEmpty
                        ){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => whatsyourbirthday(),));
                        }
                        else{
                          first_name_controller.text.isEmpty ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your Name"))):
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your Last Name")));
                        }
                        setState(() {});
                      },
                      child:
                      Container(
                        height: width * 0.11,
                        width: width * 0.73,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  colorpage.secondary,
                                  colorpage.primarycolor
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft),
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
            ),
          ],
        ),
      ),
    ));
  }
}
