import 'package:facebook/MessageChat.dart';
import 'package:facebook/image_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {

  bool toggele=false;
   List listtile=[
     {
         "list1":Imagepage.msg1,
         "list2":"Maisy Hupheri"
     },
     {
       "list1":Imagepage.msg2,
       "list2":"Kiran Pawar"
     },
     {
       "list1":Imagepage.chandhinipic,
       "list2":"Maisy Hupheri",
       "page":MessageChat()
     },
     {
       "list1":Imagepage.Avathar4,
       "list2":"Anandi kande"
     },
     {
       "list1":Imagepage.msg3,
       "list2":"Karen Castillo"
     },{
       "list1":Imagepage.msg1,
       "list2":"Rocky Parker"
     },
     {
       "list1":Imagepage.msg2,
       "list2":"Kiran Pawar"
     },
     {
       "list1":Imagepage.kiranpic,
       "list2":"Maisy Hupheri"
     },
     {
       "list1":Imagepage.Avathar4,
       "list2":"Anandi kande"
     },
     
   ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              Padding(
                padding:  EdgeInsets.all(width*0.03),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              toggele = !toggele;
                              setState(() {});
                            },
                            child: Container(
                              height: width * 0.09,
                              width: width * 0.15,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue,),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(width * 0.2)),
                            ),
                          ),
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 200),
                            left: toggele == true ? width * 0.07 : width * 0.00,
                            child: InkWell(
                              onTap: () {
                                toggele = !toggele;
                                setState(() {});
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                height: width * 0.08,
                                width: width * 0.08,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue,),
                                    color: Colors.white, shape: BoxShape.circle),
                                  child: toggele == true ?Icon(Icons.lock_open_rounded,color: Colors.grey,): Icon(Icons.lock_outline,color: Colors.black,)
                              ),
                            ),
                          ),
                          AnimatedPositioned(
                              duration: Duration(milliseconds: 200),
                              left: toggele == true ? width * 0.02 : width * 0.08,
                              top: width * 0.01,
                              child: InkWell(
                                  onTap: () {
                                    toggele = !toggele;
                                    setState(() {});
                                  },
                                   ))
                        ],
                      )
                    ],
                   ),
              )
              ],

            elevation: 0,
            backgroundColor: Colors.white24,
            leading:  InkWell(
                onTap: () {
                  Navigator.pop(context);
                  setState(() {});
                },
                child: Icon(
                  CupertinoIcons.back,
                  color: Colors.black,
                )),
            title: Text("New Message",style: TextStyle(
              color: Colors.black,fontSize: width*0.06
            ),),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: " Type a name or group",
                    hintStyle: TextStyle(
                      color: Colors.black
                    ),
                    prefixText: "TO : ",
                  ),
                ),
                Container(
                    height: width*0.3,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: width*0.04,
                            ),
                            SvgPicture.asset(Imagepage.twoblue),
                            SizedBox(
                              width: width*0.04,
                            ),
                            Text("Create a new group",
                                style: TextStyle(
                                    color: Colors.blue
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: width*0.03,
                            ),
                            SvgPicture.asset(Imagepage.frame,width: width*0.09,),
                            SizedBox(
                              width: width*0.025,
                            ),
                            Text("Create a new video call",
                              style: TextStyle(
                                  color: Colors.blue
                              ),)
                          ],
                        ),
                      ],
                    ),
                ),
                Divider(
                  color: Colors.black,
                ),
                Padding(
                  padding:  EdgeInsets.all(width*0.02),
                  child: Container(
                    height: width*1.90,
                    width: width*1,
                    // color: Colors.red,
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder:  (context) => listtile[index]["page"],));
                            },
                            child: Row(
                              children: [
                                Image.asset(listtile[index]["list1"],width: width*0.18,),
                                SizedBox(
                                  width: width*0.03,
                                ),
                                Text(listtile[index]["list2"],style: TextStyle(
                                  fontSize: width*0.04,
                                  fontWeight: FontWeight.w500
                                ),)

                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: width*0.03,
                          );
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
