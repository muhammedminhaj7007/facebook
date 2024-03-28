import 'package:facebook/image_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'main.dart';

class foryou extends StatefulWidget {
  const foryou({super.key});

  @override
  State<foryou> createState() => _foryouState();
}

class _foryouState extends State<foryou> {
  List listtile=[
    {
      "list1":Imagepage.blankimage,
      "list2":"BasicHacker . Follow",
      "list3": Imagepage.images5,
      "list4":"10h",
      "list5":Imagepage.clear,
      "list6":"FREE FIRE LIVE",
      "list7":"seemore",
      "list8":Imagepage.freefire,
      "list9":Imagepage.hand,
      "list10":Imagepage.mesanger,
      "list11":Imagepage.substract,
      "list12": Imagepage.like,
      "list13": Imagepage.redheart,
      "list14": "10k",
      "list15": "400 Comments . 270 Shares ",
      "list16":Imagepage.bluelike
    },
    {
      "list1":Imagepage.blankimage,
      "list2":"BasicHacker . Follow",
      "list3": Imagepage.images5,
      "list4":"10h",
      "list5":Imagepage.clear,
      "list6":"FREE FIRE LIVE",
      "list7":"seemore",
      "list8":Imagepage.freefire,
      "list9":Imagepage.hand,
      "list10":Imagepage.mesanger,
      "list11":Imagepage.substract,
      "list12": Imagepage.like,
      "list13": Imagepage.redheart,
      "list14": "10k",
      "list15": "400 Comments . 270 Shares ",
      "list16":Imagepage.bluelike
    }
  ];
  List<int> like=[];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body:SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.all(width*0.01),
                  child: Container(
                    height: width*2.2,
                    width: width*1,
                    // color: Colors.blue,
                    child: ListView.separated(
                             shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ListTile(
                                leading: Image(image: AssetImage(listtile[index]["list1"])),
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(listtile[index]["list2"]),
                                    Row(
                                      children: [
                                        Image(image: AssetImage(listtile[index]["list3"]),width: width*0.04,color: Colors.black,),
                                       SizedBox(
                                         width: width*0.04,
                                       ),
                                       SvgPicture.asset(listtile[index]["list5"])
                                      ],
                                    )
                                  ],
                                ),
                                subtitle:Text(listtile[index]["list4"]),
                              ),
                              Row(
                                children: [
                                  Text(listtile[index]["list6"]),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(listtile[index]["list7"]),
                                ],
                              ),
                              Image(image: AssetImage(listtile[index]["list8"])),
                              SizedBox(
                                  height: width*0.02,
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
                                      child: like.contains(index)
                                      ? SvgPicture.asset(listtile[index]["list16"])
                                      : SvgPicture.asset(listtile[index]["list9"])
                                  ),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  SvgPicture.asset(listtile[index]["list10"]),
                                  SizedBox(
                                    width: width * 0.03,
                                  ),
                                  SvgPicture.asset(listtile[index]["list11"]),
                                ],
                              ),
                              SizedBox(
                                  height: width*0.03
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                      SvgPicture.asset(listtile[index]["list12"],
                                          width: width * 0.04),
                                      SvgPicture.asset(
                                        listtile[index]["list13"],
                                        width: width * 0.04,
                                      ),
                                      Text(
                                        listtile[index]["list14"],
                                        style: TextStyle(
                                          fontSize: width * 0.03,
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    listtile[index]["list15"],
                                    style: TextStyle(fontSize: width * 0.03),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox();
                        },
                        itemCount: listtile.length),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
