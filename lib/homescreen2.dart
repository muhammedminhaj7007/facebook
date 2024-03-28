import 'package:facebook/colorpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'image_page.dart';
import 'main.dart';

class homescreen2 extends StatefulWidget {
  const homescreen2({super.key});

  @override
  State<homescreen2> createState() => _homescreen2State();
}

class _homescreen2State extends State<homescreen2> {
  List image= [
    {
      "images": Imagepage.maskgroup,
      "images1": Imagepage.addblue,
      "text": ""
    },
    {
      "images": Imagepage.VishPatil,
      "images1": Imagepage.photo,
      "text": "Vish Patil"
    },
    {
      "images": Imagepage.RakeshShetty,
      "images1": Imagepage.person,
      "text": "Rakesh Shetty"
    },
    {
      "images": Imagepage.AkashBolre,
      "images1": Imagepage.person2,
      "text": "Rakesh Shetty"
    },
  ];
  List B = [
  {
  "list": Imagepage.personimage,
  "textA": "Deven mestry is with Mahesh\n" "Joshi.",
  "textB": "1 h .  Mumbai, Maharastra .",
  "list1": Imagepage.groupicon,
  "list2": Imagepage.threeicon,
  "textC": "Old is Gold..!!❤😍",
  "list3": Imagepage.redheart,
  "list4": Imagepage.smilelove,
  "list5": Imagepage.whitecar,
  "list6": Imagepage.hand,
  "list7": Imagepage.message,
  "list8": Imagepage.substract,
  "textD": "Liked by Sachin Kamble and 155 others ",
  "list9": Imagepage.like,
  "list10": Imagepage.redheart,
  "textE": "4 Comments",
},
{
"list": Imagepage.profileboy,
"textA": "Tejas Phopale updated his profile \n photo",
"textB": "2 h . Delhi . ",
"textC":"",
"list1": Imagepage.internet,
"list2": Imagepage.threeicon,
// "list3": Imagepage.emojies,
"list5": Imagepage.personcircle,
"textD": "You, Rakesh Shetty and 130 others",
"list9": Imagepage.like,
"list10": Imagepage.redheart,
"textE": "41 Comments",
},
{
"list": Imagepage.maskgroup1,
"textA": "Brooklyn Simmons is in Dubai",
"textB": "1 d. ",
"textC":"",
"list1": Imagepage.internet,
"list2": Imagepage.threeicon,
"list5": Imagepage.girlimage,
"list6": Imagepage.hand,
"list7": Imagepage.message,
"list8": Imagepage.substract,
"textD": "You, Anin Kale and 205 others ",
"list9": Imagepage.like,
"list10": Imagepage.redheart,
"textE": "14 Comments",
},
{
"list": Imagepage.avatar,
"textA": "Chetan Jairaj",
"textB":"6 h .  Pune, Maharastra .",
"list1": "",
"list2": Imagepage.threeicon,
"textC": "Home coming❤",
"list5": Imagepage.boyimage,
"list6": Imagepage.hand,
"list7": Imagepage.message,
"list8": Imagepage.substract,
"textD": "",
"list9": "",
"list10": "",
"textE": "",
},

];
List<int> like=[];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
         physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: width * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: width * 0.13,
                    width: width * 0.15,
                    child: Image.asset(
                      Imagepage.imagelogo,
                      fit: BoxFit.fill,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(width * 0.03),
                    )),
                Container(
                  height: width * 0.1,
                  width: width * 0.6,
                 // color: Colors.red,
                  child: TextFormField(
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "What’s on your mind, Sanjay?",
                        labelStyle: TextStyle(
                          fontSize: width * 0.03,
                          color: Colors.grey.shade500,
                        ),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.03),
                          borderSide: BorderSide(
                            color: Colors.grey.shade500,
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(
                            Imagepage.group,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey.shade500,
                            ),
                            borderRadius: BorderRadius.circular(width * 0.03)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade200))),
                  ),
                ),
                Container(
                    height: width * 0.12,
                    width: width * 0.11,
                    child: SvgPicture.asset(Imagepage.serch))
              ],
            ),
            SizedBox(
              height: width * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: width * 0.11,
                  width: width * 0.23,
                  decoration: BoxDecoration(
                      color: colorpage.yellow,
                      borderRadius: BorderRadius.circular(width * 0.03)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: SvgPicture.asset(Imagepage.reels),
                      ),
                      Text(
                        "Reels",
                        style: TextStyle(
                            color: Colors.yellow.shade600,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Container(
                  height: width * 0.11,
                  width: width * 0.23,
                  decoration: BoxDecoration(
                      color: colorpage.green,
                      borderRadius: BorderRadius.circular(width * 0.03)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Image.asset(Imagepage.videogreen),
                      ),
                      Text(
                        "Room",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Container(
                  height: width * 0.10,
                  width: width * 0.23,
                  decoration: BoxDecoration(
                      color: colorpage.red,
                      borderRadius: BorderRadius.circular(width * 0.03)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Image.asset(Imagepage.contactgroup),
                      ),
                      Text(
                        "Group",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Container(
                  height: width * 0.10,
                  width: width * 0.23,
                  decoration: BoxDecoration(
                      color: colorpage.blue,
                      borderRadius: BorderRadius.circular(width * 0.03)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Image.asset(Imagepage.bluelive),
                      ),
                      Text(
                        "Live",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: width * 0.02,
            ),
            Container(
                height: width * 0.53,
                width: width * 1,
                // color: colorpage.green,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: width * 0.46,
                              width: width * 0.3,
                              // color: Colors.red,
                              child: Column(
                                children: [
                                  Container(
                                    height: width * 0.4,
                                    width: width * 0.35,
                                    decoration: BoxDecoration(
                                      // color: Colors.yellow,
                                        borderRadius:
                                        BorderRadius.circular(width * 0.06)),
                                    child: Image.asset(
                                      image[index]["images"],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              // bottom: width*0.1,
                              left: width * 0.095,
                              top: width * 0.35,
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                AssetImage(image[index]["images1"]),
                              ),
                            ),
                          ],
                        ),
                        Text(image[index]["text"]),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: width * 0.03,
                    );
                  },
                  itemCount: image.length,
                ),
                ),
            Divider(
              color: Colors.grey,
            ),
            Container(
                height: height * 2.1,
                width: width * 1,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: Image.asset(B[index]["list"]),
                            title: Text(
                              B[index]["textA"],
                              style: TextStyle(fontSize: width * 0.035),
                            ),
                            subtitle: Row(
                              children: [
                                Text(B[index]["textB"]),
                                SvgPicture.asset(B[index]["list1"]),
                                // SvgPicture.asset(B[index]["list2"]),
                              ],
                            ),

                            trailing: SvgPicture.asset(B[index]["list2"]),
                          ),
                          Padding(
                            padding:  EdgeInsets.all(width*0.02),
                            child: Row(
                              children: [
                                Text(B[index]["textC"]),
                              ],
                            ),
                          ),
                          Container(
                            height: width * 0.7,
                            width: width * 1,
                            // color: Colors.pink,
                            child: Image.asset(
                              B[index]["list5"],
                              // fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            height: width * 0.02,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: width*0.04,
                              ),
                              InkWell(
                                onTap: () {
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
                                 ? SvgPicture.asset(Imagepage.bluelike)
                                 : SvgPicture.asset(Imagepage.hand),
                              ),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              SvgPicture.asset(Imagepage.messageblack),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              SvgPicture.asset(Imagepage.substract),
                            ],
                          ),

                          SizedBox(
                            height: width * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                // mainAxisAlignment:
                                // MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  SvgPicture.asset(B[index]["list9"],
                                      width: width * 0.04),
                                  SvgPicture.asset(
                                    B[index]["list10"],
                                    width: width * 0.04,
                                  ),
                                ],
                              ),
                              Text(
                                B[index]["textD"],
                                style: TextStyle(
                                  fontSize: width * 0.03,
                                ),
                              ),
                              Text(
                                B[index]["textE"],
                                style: TextStyle(fontSize: width * 0.03),
                              ),
                              SizedBox(),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox();
                    },
                    itemCount: B.length),
            ),

          ],
        ),
      ),
    ));
  }
}
