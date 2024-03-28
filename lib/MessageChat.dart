import 'package:facebook/image_page.dart';
import 'package:facebook/main.dart';
import 'package:facebook/maisy%20profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessageChat extends StatefulWidget {
  const MessageChat({super.key});

  @override
  State<MessageChat> createState() => _MessageChatState();
}

class _MessageChatState extends State<MessageChat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  setState(() {});
                },
                child: Icon(
                  CupertinoIcons.back,
                  color: Colors.black,
                )),
          ),
          body: Column(
            children: [
              Container(
                height: width*0.7,
                width: width*1,
              //  color: Colors.red,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Imagepage.chandhinipic,width: width*0.25,),
                  SizedBox(
                    height: width*0.04,
                  ),
                  Text("Maisy Hupheri",style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: width*0.05
                  ),)
                ],
              ),
              ),
              SizedBox(
                height: width*0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset(Imagepage.audio),
                      SizedBox(
                        height: width*0.02,
                      ),
                      Text("Audio")
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(Imagepage.videoiconblue),
                      SizedBox(
                        height: width*0.02,
                      ),
                      Text("Video")
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Myisy_hupheri(),));
                    },
                    child: Container(
                      height: width*0.13,
                      width: width*0.15,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          SvgPicture.asset(Imagepage.personblue),
                          SizedBox(
                            height: width*0.02,
                          ),
                          Text("Profile")
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SvgPicture.asset(Imagepage.muteblue),
                      SizedBox(
                        height: width*0.02,
                      ),
                      Text("Mute")
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: width*0.03,
              ),
              Divider(
                color: Colors.black,
              ),
              Padding(
                padding:  EdgeInsets.only(left: width*0.02,right: width*0.5),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Theme",style: TextStyle(
                      fontSize: width*0.05
                    ),),
                    SizedBox(
                      height: width*0.02,
                    ),
                    Text("Emoji",style: TextStyle(
                        fontSize: width*0.05
                    ),),
                    SizedBox(
                      height: width*0.02,
                    ),
                    Text("Nickname",style: TextStyle(
                        fontSize: width*0.05
                    ),),
                    SizedBox(
                      height: width*0.02,
                    ),
                    Text("Word effects",style: TextStyle(
                        fontSize: width*0.05
                    ),),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Padding(
                padding:  EdgeInsets.only(left: width*0.01,right: width*0.23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("More Actions",style: TextStyle(
                        fontSize: width*0.04,
                      color: Colors.grey.shade400
                    ),),
                    SizedBox(
                      height: width*0.03,
                    ),
                    Text("View photos & videos",style: TextStyle(
                        fontSize: width*0.05
                    ),),
                    SizedBox(
                      height: width*0.02,
                    ),
                    Text("Search in conversation",style: TextStyle(
                        fontSize: width*0.05
                    ),),
                    SizedBox(
                      height: width*0.02,
                    ),
                    Text("Secret conversation",style: TextStyle(
                        fontSize: width*0.05
                    ),),
                    SizedBox(
                      height: width*0.02,
                    ),
                    Text("Create group with Maisy",style: TextStyle(
                        fontSize: width*0.05
                    ),),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
