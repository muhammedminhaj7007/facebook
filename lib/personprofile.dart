import 'dart:io';

import 'package:facebook/colorpage.dart';
import 'package:facebook/image_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

import 'main.dart';

class personfrofile extends StatefulWidget {
  const personfrofile({super.key});

  @override
  State<personfrofile> createState() => _personfrofileState();
}

class _personfrofileState extends State<personfrofile> {
  var file;

  picimage(ImageSource source) async {
    final pickedFile = await ImagePicker.platform.getImageFromSource(source: source);
    file=File(pickedFile!.path);
    if(mounted){
      file=File(pickedFile.path);
      setState(() {

      });
    }
  }

  List listview = [
    {
      "list1": Imagepage.maskgroup,
      "list2": "Sanjay Shendy",
      "list3": Imagepage.images5,
      "list4": "10 h",
      "list5": Imagepage.internet0,
      "list6": "You never been expected like as"
          " your friend can be look as\n"
          " much cute in specific costume, and suddenly if you have \n"
          "seen his picture on Facebook, then probably your comment\n"
          " on photo can be like as. “Cuteness overloaded!”. ",
      "list7": Imagepage.postimg,
      "list8": Imagepage.hand,
      "list9": Imagepage.mesanger,
      "list10": Imagepage.substract,
      "list11": "1k",
      "list12": Imagepage.like,
      "list13": Imagepage.redheart,
      "list14": "400 Comments . 270 Shares ",
      "list15":Imagepage.bluelike

    },
    {
      "list1": Imagepage.maskgroup,
      "list2": "Sanjay Shendy",
      "list3": Imagepage.images5,
      "list4": "1 h",
      "list5": Imagepage.internet0,
      "list6": "You never been expected like as"
          " your friend can be look as\n"
          " much cute in specific costume, and suddenly if you have \n"
          "seen his picture on Facebook, then probably your comment\n"
          " on photo can be like as. “Cuteness overloaded!”. ",
      "list7": Imagepage.img123,
      "list8": Imagepage.hand,
      "list9": Imagepage.mesanger,
      "list10":Imagepage.substract,
      "list11": "",
      "list12": "",
      "list13": "",
    "list14":"",
      "list15":Imagepage.bluelike

    }
  ];
  List<int> like=[];
bool a=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child:
        Column(
          children: [
            Container(
              height: width * 0.80,
              width: width * 1,
              // color: Colors.red,
              child: Stack(
                children: [
                  Image.asset(Imagepage.backgroundimage),
                  Positioned(
                    left: width * 0.33,
                    top: width * 0.45,
                    child: Stack(
                      children: [
                        file==null?
                        Container(
                          height: width * 0.35,
                          width: width * 0.35,
                          child: Image.asset(Imagepage.maskgroup,
                              fit: BoxFit.cover),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white, width: width * 0.02),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(width * 0.03),
                            // image: DecorationImage(
                            //     image: AssetImage(Imagepage.maskgroup,),fit: BoxFit.cover)
                          )
                        ):Container(
                          height: width*0.35,
                          width: width*0.35,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: FileImage(file),
                            fit: BoxFit.fill)
                          ),
                        ),
                        Positioned(
                          left: width * 0.23,
                          top: width * 0.23,
                          child: Container(
                            width: width * 0.08,
                            height: width * 0.07,
                            child: SvgPicture.asset(Imagepage.camericonablack),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: width * 0.88,
                    top: width * 0.52,
                    child: Container(
                      width: width * 0.08,
                      height: width * 0.07,
                      child: SvgPicture.asset(Imagepage.camericonablack),
                    ),
                  )
                ],
              ),
            ),
            Text(
              "Sanjay Shendy",
              style: TextStyle(
                  fontWeight: FontWeight.w600, fontSize: width * 0.05),
            ),
            SizedBox(
              height: width * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: width * 0.09,
                  width: width * 0.25,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [colorpage.secondary, colorpage.primarycolor],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft),
                      // color: Colors.blue,
                      borderRadius: BorderRadius.circular(width * 0.03)),
                  child: Center(
                      child: Text(
                    "Add to story",
                    style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  )),
                ),
                InkWell(
                  onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          actions: [
                            Container(
                              height: width*0.3,
                              width: width*0.8,
                              color: Colors.white,
                              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Choose file from ?",style:  TextStyle(
                                    fontSize: width*0.05,
                                    fontWeight: FontWeight.w600,
                                  ),),
                                  SizedBox(
                                    height: height*0.04,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          picimage(ImageSource.camera);
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: width*0.09,
                                          width: width*0.11,
                                          child: Icon(Icons.camera_alt_rounded,color: Colors.white,),
                                          decoration: BoxDecoration(
                                              color: Colors.blueAccent,
                                            borderRadius: BorderRadius.circular(width*0.03)
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width*0.02,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          picimage(ImageSource.gallery);
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: width*0.09,
                                          width: width*0.11,
                                          decoration: BoxDecoration(
                                              color: Colors.blueAccent,
                                              borderRadius: BorderRadius.circular(width*0.03),
                                          ),
                                          child:  Icon(Icons.photo,color: Colors.white,)
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      },);
                },
                  child: Container(
                    height: width * 0.09,
                    width: width * 0.25,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(width * 0.03)),
                    child: Center(
                        child: Text(
                      "Edit profile",
                      style: TextStyle(
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
                  ),
                ),
                SvgPicture.asset(
                  Imagepage.threeicon,
                  width: width * 0.01,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(
              height: width * 0.03,
            ),
            Row(
              children: [
                Container(
                  // color: Colors.red,
                  width: width * 0.73,
                  height: width * 0.11,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        Imagepage.secyirty,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "You locked your profile",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: width * 0.04),
                          ),
                          Text(
                            "Learn more",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: width * 0.04,
                                color: Colors.blue),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: width * 0.09,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Posts\n1972",
                  style: TextStyle(
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue),
                ),
                Text("Friends\n4843",
                    style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue)),
                Text("Followers\n1990",
                    style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue)),
                Text("Following\n1456",
                    style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue)),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: width * 0.09,
            ),
            Column(
              children: [
                Container(
                  height: width * 0.68,
                  width: width * 0.87,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            Imagepage.images1,
                            width: width * 0.08,
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          Text("Founder and CEO at A to Z company Ltd.",
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            Imagepage.image2,
                            width: width * 0.08,
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          Text(
                              "Studied Computer Science at\nHarvard University",
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            Imagepage.images3,
                            width: width * 0.08,
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          Text("Lives in Mumbai, Maharastra",
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            Imagepage.images4,
                            width: width * 0.08,
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          Text("From Mumbai, India.",
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w600,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            Imagepage.images5,
                            width: width * 0.08,
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          Text("See your about info.",
                              style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.w500,
                              ))
                        ],
                      ),
                     a!=true? Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                Imagepage.images3,
                                width: width * 0.08,
                              ),
                              SizedBox(
                                width: width * 0.04,
                              ),
                              Text("Home Address",
                                  style: TextStyle(
                                    fontSize: width * 0.04,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                Imagepage.images1,
                                width: width * 0.08,
                              ),
                              SizedBox(
                                width: width * 0.04,
                              ),
                              Text("Founder company.",
                                  style: TextStyle(
                                    fontSize: width * 0.04,
                                    fontWeight: FontWeight.w500,
                                  ))
                            ],
                          ),
                        ],
                      ):SizedBox()
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: width * 0.09,
              width: width * 0.40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(width * 0.03)),
              child: Center(
                  child: Text(
                "Edit public details",
                style: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              )),
            ),
            Divider(
              color: Colors.grey,
              height: width * 0.09,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                        child: Text(
                            "1478 friends posted on your timeline for your birthday")),
                    Image.asset(
                      Imagepage.images5,
                      width: width * 0.05,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(
                  height: width * 0.02,
                ),
                InkWell(
                  onTap: () {
                    a=!a;
                    setState(() {

                    });
                  },
                  child: Container(
                    height: width * 0.08,
                    width: width * 0.30,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [colorpage.secondary, colorpage.primarycolor],
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft),
                        // color: Colors.blue,
                        borderRadius: BorderRadius.circular(width * 0.03)),
                    child: Center(
                        child: Text(
                      a!=true?"See Less":"See All",
                      style: TextStyle(
                          fontSize: width * 0.04,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              height: width * 0.09,
            ),
            Container(
              height: width * 2,
              width: width * 1,
              // color: Colors.red,
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: Container(
                              height: width * 0.3,
                              width: width * 0.2,
                              child: Image(
                                image: AssetImage(listview[index]["list1"]),
                              )),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(listview[index]["list2"]),
                              Image(
                                image: AssetImage(listview[index]["list3"]),
                                width: width * 0.06,
                                color: Colors.black,
                              )
                            ],
                          ),
                          subtitle: Row(
                            children: [
                              Text(listview[index]["list4"]),
                              Image(
                                image: AssetImage(listview[index]["list5"]),
                                width: width * 0.03,
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text(listview[index]["list6"],style: TextStyle(
                            fontSize: width*0.037
                          ),)],
                        ),
                        SizedBox(
                          height: width * 0.03,
                        ),
                        Image(image: AssetImage(listview[index]["list7"])),
                        SizedBox(
                          height: width * 0.02,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width*0.03,
                            ),
                            InkWell(onTap: () {
                              setState(() {
                                if(like.contains(index)){

                                  like.remove(index);
                                }else{
                                  like.add(index);
                                  print(like);
                                }
                              });
                            },
                                child:like.contains(index)
                               ? SvgPicture.asset(listview[index]["list15"])
                               : SvgPicture.asset(listview[index]["list8"]),),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            SvgPicture.asset(listview[index]["list9"]),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            SvgPicture.asset(listview[index]["list10"]),
                          ],
                        ),
                        SizedBox(
                          height: width*0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                SvgPicture.asset(listview[index]["list13"],
                                    width: width * 0.04),
                                SvgPicture.asset(
                                  listview[index]["list12"],
                                  width: width * 0.04,
                                ),
                                Text(
                                  listview[index]["list11"],
                                  style: TextStyle(
                                    fontSize: width * 0.03,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              listview[index]["list14"],
                              style: TextStyle(fontSize: width * 0.03),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: width * 0.002,
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox();
                  },
                  itemCount: listview.length),
            )
          ],
        ),
      ),
    ));
  }
}
