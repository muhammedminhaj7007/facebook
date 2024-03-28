import 'package:facebook/colorpage.dart';
import 'package:facebook/whatsyourgender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';

import 'main.dart';

class whatsyourbirthday extends StatefulWidget {
  const whatsyourbirthday({super.key});

  @override
  State<whatsyourbirthday> createState() => _whatsyourbirthdayState();
}

class _whatsyourbirthdayState extends State<whatsyourbirthday> {

  DateTime? _selectedDate;
int age=0;
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
          "Birthday",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: height * 0.60,
               color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Center(
                        child: Text(
                          "What’s your birthday?",
                          style: TextStyle(
                            fontSize: width * 0.06,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: width*0.03,
                      ),
                      Text("Choose your date of birth.",
                          style: TextStyle(color: Colors.grey)),
                      Text("You can always make this private later.",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Container(
                    width: width * 0.67,
                    child: DatePickerWidget(
                      looping: false, // default is not looping
                      firstDate: DateTime(1990, 1, 1),
                      lastDate: DateTime.now(),
                      initialDate: DateTime.now(),
                      //DateTime.now(),
                      dateFormat:
                          // "MM-dd(E)",
                          "dd/MMMM/yyyy",
                      // locale: DatePicker.localeFromString('th'),
                      onChange: (DateTime newDate, _) {
                        age=DateTime.now().difference(newDate).inDays~/365;
                        setState(() {
                          _selectedDate = newDate;
                        });
                        print(_selectedDate);

                      },
                      pickerTheme: DateTimePickerTheme(
                        backgroundColor: Colors.white24,
                        itemTextStyle:
                            TextStyle(color: Colors.black, fontSize: 20),
                        dividerColor: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    "$age Years old",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: width * 0.04),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => whatsyourgender(),
                          ));
                      setState(() {});
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
          ],
        ),
      ),
    ));
  }
}
