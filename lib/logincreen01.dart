import 'package:facebook/colorpage.dart';
import 'package:facebook/image_page.dart';
import 'package:facebook/loginscreen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'mob.dart';
import 'main.dart';

class logincreen01 extends StatefulWidget {
  const logincreen01({super.key});

  @override
  State<logincreen01> createState() => _logincreen01State();
}

class _logincreen01State extends State<logincreen01> {
  bool a = false;
  bool obscuretext = true;

  final formKey = GlobalKey<FormState>();
  final phoneValidation = RegExp(r"[0-9]{10}$");
  final emailValidation = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final passwordValidation =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  TextEditingController phoneEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    width: width * 1,
                    height: width * 0.9,
                    child: Image(
                        image: AssetImage(Imagepage.lockscreen1),
                        fit: BoxFit.fill),
                  ),
                  SvgPicture.asset(Imagepage.icon4),
                  Positioned(
                      left: width * 0.45,
                      bottom: width * 0.10,
                      child: Container(
                        width: width * 0.15,
                        child: Image(
                          image: AssetImage(Imagepage.logo),
                        ),
                      ))
                ]),
                SizedBox(
                  width: width * 0.8,
                  height: width * 0.55,
                  // color: Colors.yellow,
                  child: Column(
                    children: [
                      TextFormField(
                        // textAlign: TextAlign.start,
                        controller: phoneEmailController,
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
                            labelText: "Email",
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
                      TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: Colors.black,
                        obscureText: a ? false : true,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (!passwordValidation.hasMatch(value!)) {
                            return "Password must contain,\n1 Uppercase,(A-Z)\n1 Lowercase,(a-z)\n 1 Number(1 to 10),\n 1 Special character(@,%,*,!)";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () {
                                a = !a;
                                setState(() {});
                              },
                              child: Icon(
                                  a ? Icons.visibility : Icons.visibility_off),
                            ),
                            constraints: BoxConstraints(
                              maxWidth: width * 0.8,
                            ),
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.grey),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    if(
                    formKey.currentState!.validate()
                    ) {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => forgot_pass_mob(),));
                    }else{
                      emailValidation.toString() == "" ? ScaffoldMessenger.of(
                          context).showSnackBar(SnackBar(content: Text(
                          "please enter your password"))) :
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("enter your valid Details")));
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
                SizedBox(
                  height: width * 0.04,
                ),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: width * 0.03,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  height: width * 0.30,
                  //color: Colors.yellow,
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          indent: width * 0.12,
                          endIndent: width * 0.03,
                        ),
                      ),
                      Text("OR"),
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          indent: width * 0.03,
                          endIndent: width * 0.12,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: width * 0.08,
                  width: width * 0.6,
                  child: Center(child: Text("Create new Facebook account")),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(width * 0.03),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
