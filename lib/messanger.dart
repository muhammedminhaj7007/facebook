import 'package:facebook/image_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'NewMessage.dart';
import 'colorpage.dart';


import 'main.dart';

class messanger extends StatefulWidget {
  const messanger({super.key});

  @override
  State<messanger> createState() => _messangerState();
}

class _messangerState extends State<messanger> {

  List listtile=[
    {
      "list1":Imagepage.msg1,
      "list2":"Vish\nPatil"
    },
    {
      "list1":Imagepage.msg2,
      "list2":"Rakesh\nShetty"
    },
    {
      "list1":Imagepage.kiranpic,
      "list2":"Kiran\nPawar"
    },
    {
      "list1":Imagepage.Avathar4,
      "list2":"Rocky\nParker"
    },
    {
      "list1":Imagepage.msg3,
      "list2":"Karen\nCastillo"
    },

  ];
  List listtile1=[
    {
      "list":Imagepage.Avathar4,
      "list1":"Rocky Parker",
      "list2":"You: Okay fine.  08:36 AM",
      "list3":Imagepage.bluetick
    },
    {
      "list":Imagepage.kiranpic,
      "list1":"Kiran Pawar",
      "list2":"You: Yes, Thanks!!   06:00 AM",
      "list3":Imagepage.bluetick
    },
    {
      "list":Imagepage.chandhinipic,
      "list1":"Maisy Hupheri",
      "list2":"You: See you soon.   Sat",
      "list3":Imagepage.normaltick
    },
    {
      "list":Imagepage.anandhi,
      "list1":"Anandi kande",
      "list2":"Have a good day.   Fri",
      "list3":""
    },
    {
      "list":Imagepage.msg3,
      "list1":"Karen Castillo",
      "list2":"You: Ok, see you in Tor..   Thu",
      "list3":Imagepage.bluetick
    },
    {
      "list":Imagepage.kiran,
      "list1":"Kiran Pawar",
      "list2":"The business plan loo..   Thu",
      "list3":Imagepage.normaltick
    },
    {
      "list":Imagepage.Avathar4,
      "list1":"Rocky Parker",
      "list2":"You: Okay Thanks!!",
      "list3":Imagepage.bluetick
    },
    {
      "list":Imagepage.dhana,
      "list1":"Dhana Ghade",
      "list2":"You: Okay Thanks!!",
      "list3":Imagepage.bluetick
    },
    {
      "list":Imagepage.Avathar5,
      "list1":"Kiran Pawar",
      "list2":"You: Okay Thanks!!",
      "list3":Imagepage.bluetick
    },
    {
      "list":Imagepage.Avathar2,
      "list1":"Rocky Parker",
      "list2":"You: Okay fine.  08:36 AM",
      "list3":Imagepage.normaltick
    },
    {
      "list":Imagepage.dhana,
      "list1":"Dhana Ghade",
      "list2":"You: Okay fine.",
      "list3":Imagepage.bluetick
    },
  ];

  get doNothing => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
     body: SingleChildScrollView(
       physics: BouncingScrollPhysics(),
       child: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Row(
                 children: [
                   Padding(
                     padding:  EdgeInsets.all(width*0.03),
                     child: Container(
                         height: width*0.15,
                         width: width*0.15,
                         // color: Colors.red,
                         child: Image(image: AssetImage(Imagepage.maskgroup),fit: BoxFit.fill,)),
                   ),
                   Text("Chats",style: TextStyle(
                       fontSize: width*0.07,
                       fontWeight: FontWeight.w600
                   ),),
                 ],
               ),
               Padding(
                 padding:  EdgeInsets.all(width*0.03),
                 child: Row(
                   children: [
                     SvgPicture.asset(Imagepage.camericonablack,width: width*0.09,),
                     SizedBox(
                       width: width*0.02,
                     ),
                     SvgPicture.asset(Imagepage.editicon,width: width*0.09,),
                   ],
                 ),
               ),
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               InkWell(
                 onTap: () {
                   Navigator.push(context,MaterialPageRoute(builder: (context) => NewMessage(),));
               },
                 child: Container(
                   height: width * 0.09,
                   width: width * 0.70,
                   // color: Colors.red,
                   decoration: BoxDecoration(
                       color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(width * 0.03)),
                   child: Center(
                       child: Row(
                         children: [
                           SizedBox(
                             width: width*0.03,
                           ),
                           SvgPicture.asset(Imagepage.serch),
                           SizedBox(
                             width: width*0.03,
                           ),
                           Text(
                             "Search",
                             style: TextStyle(
                                 fontSize: width * 0.04,
                                 fontWeight: FontWeight.w500,
                                 color: Colors.black),
                           ),
                         ],
                       )),
                 ),
               ),
               Container(
                 height: width * 0.09,
                 width: width * 0.25,
                 decoration: BoxDecoration(
                     color: Colors.grey.shade200,
                     borderRadius: BorderRadius.circular(width * 0.03)),
                 child: Center(
                     child: Text(
                       "Unread",
                       style: TextStyle(
                           fontSize: width * 0.04,
                           fontWeight: FontWeight.w500,
                           color: Colors.black),
                     )),
               ),
               // TextFormField(
               //   cursorColor: Colors.black,
               //   keyboardType: TextInputType.text,
               //   decoration: InputDecoration(
               //     constraints: BoxConstraints(
               //       maxHeight: width*0.1,
               //       maxWidth: width*0.6
               //     ),
               //       labelText: "Search",
               //       labelStyle: TextStyle(
               //         fontSize: width * 0.03,
               //         color: Colors.grey.shade500,
               //       ),
               //       fillColor: Colors.grey.shade100,
               //       filled: true,
               //       border: OutlineInputBorder(
               //         borderRadius: BorderRadius.circular(width * 0.03),
               //         borderSide: BorderSide(
               //           color: Colors.grey.shade500,
               //         ),
               //       ),
               //       prefixIcon:  SvgPicture.asset(Imagepage.serch),
               //       focusedBorder: OutlineInputBorder(
               //           borderSide: BorderSide(
               //             color: Colors.grey.shade500,
               //           ),
               //           borderRadius: BorderRadius.circular(width * 0.03)),
               //       enabledBorder: OutlineInputBorder(
               //           borderSide:
               //           BorderSide(color: Colors.grey.shade200))),
               // ),
               // TextFormField(
               //   cursorColor: Colors.black,
               //   keyboardType: TextInputType.text,
               //   decoration: InputDecoration(
               //       constraints: BoxConstraints(
               //           maxHeight: width*0.1,
               //           maxWidth: width*0.3
               //       ),
               //       labelText: "Unread",
               //       labelStyle: TextStyle(
               //         fontSize: width * 0.03,
               //         color: Colors.grey.shade500,
               //       ),
               //       fillColor: Colors.grey.shade100,
               //       filled: true,
               //       border: OutlineInputBorder(
               //         borderRadius: BorderRadius.circular(width * 0.03),
               //         borderSide: BorderSide(
               //           color: Colors.grey.shade500,
               //         ),
               //       ),
               //       focusedBorder: OutlineInputBorder(
               //           borderSide: BorderSide(
               //             color: Colors.grey.shade500,
               //           ),
               //           borderRadius: BorderRadius.circular(width * 0.03)),
               //       enabledBorder: OutlineInputBorder(
               //           borderSide:
               //           BorderSide(color: Colors.grey.shade200))),
               // ),
             ],
           ),
           Row(
             children: [
               Container(
                 width: width*0.18,
                 height: width*0.30,
                // color: Colors.yellow,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                         height: width*0.19,
                         width: width*0.16,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(width*0.03),
                           color: Colors.grey.shade300,
                         ),

                         child: SvgPicture.asset(Imagepage.frame,width: width*0.19,)),
                     Center(child: Text("Create\n"
                         "video call"))
                   ],
                 ),
               ),
               SizedBox(
                 width: width*0.01,
               ),
               Container(
                 width: width*0.80,
                 height: width*0.30,
                  // color: Colors.red,
                 child: ListView.separated(
                     scrollDirection: Axis.horizontal,
                     shrinkWrap: true,
                     physics: BouncingScrollPhysics(),
                     itemBuilder:(context, index) {
                       return Column(
                         children: [
                           Stack(
                             children:[
                               Container(
                                 width: width*0.18,
                                 height: width*0.20,
                                 child: Image(image: AssetImage(listtile[index]["list1"])),
                               ),
                               Positioned(
                                  left: width*0.12,
                                   bottom: width*0.001,
                                   child: Stack(
                                     children:[
                                       Container(
                                         height: width*0.06,
                                         width:width*0.070,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(width*0.03),
                                           color: Colors.white,
                                         ),
                                         child: Center(
                                           child: CircleAvatar(
                                             radius: width*0.025,
                                             backgroundColor: Colors.green.shade500,
                                           ),
                                         ),
                                       ),]
                                   ))
                             ]
                           ),
                           Center(child: Text(listtile[index]["list2"]))
                         ],
                       );
                     },
                     separatorBuilder: (context, index) {
                       return SizedBox(
                         width: width*0.02,
                       );
                     },
                     itemCount:listtile.length),
               ),
             ],
           ),
           Container(
             width: width*1.2,
             height: width*2.2,
             decoration: BoxDecoration(
                 // color: Colors.red,
               border: Border.all(color: Colors.blueAccent)
             ),
             child: ListView.separated(
               physics: NeverScrollableScrollPhysics(),
                 itemBuilder: (context, index) {
                   return Column(
                     children: [
                         Slidable(
                       key: UniqueKey(),
                   startActionPane: ActionPane(
                   motion: ScrollMotion(),
                   dismissible: DismissiblePane(onDismissed: () {}),
                   children: [
                   SlidableAction(
                   borderRadius: BorderRadius.circular(width*0.09),
                   onPressed: doNothing,
                   backgroundColor: Colors.white,
                   foregroundColor: Colors.black,
                   icon: Icons.camera_alt_outlined,

                   ),
                   SlidableAction(
                   borderRadius: BorderRadius.circular(width*0.09),
                   onPressed: doNothing,
                   backgroundColor:  Colors.white,
                   foregroundColor:Colors.black,
                   icon: Icons.call,

                   ),
                   SlidableAction(
                   borderRadius: BorderRadius.circular(width*0.09),
                   onPressed: doNothing,
                   backgroundColor:  Colors.white,
                   foregroundColor: Colors.black,
                   icon: Icons.videocam,

                   ),
                   ]),
                   endActionPane: ActionPane(
                   motion: ScrollMotion(),
                   dismissible: DismissiblePane(onDismissed: () {}),
                   children: [
                   SlidableAction(
                   borderRadius: BorderRadius.circular(width*0.09),


                   onPressed: doNothing,
                   backgroundColor: Colors.white,
                   foregroundColor: Colors.black,
                   icon:Icons.list_outlined,

                   ),
                   SlidableAction(
                   borderRadius: BorderRadius.circular(width*0.09),
                   onPressed: doNothing,
                   backgroundColor: Colors.white,
                   foregroundColor: Colors.black,
                   icon: CupertinoIcons.bell,

                   ),
                   SlidableAction(
                   borderRadius: BorderRadius.circular(width*0.09),
                   onPressed: doNothing,
                   backgroundColor:  Colors.white,
                   foregroundColor:  Colors.black,
                   icon: Icons.delete,

                   ),
                   ]),
                           child: Container(
                   height: width*0.20,
                     width: width*1,
                     decoration: BoxDecoration(
                           border: Border.all(color: Colors.blueAccent,width: width*0.001)
                     ),
                     child: ListTile(
                       leading: Stack(
                           children:[
                             Container(
                                 width: width*0.18,
                                 height: width*0.20,
                                 child: Image.asset(listtile1[index]["list"])),
                             Positioned(
                                 left: width*0.12,
                                 bottom: width*0.001,
                                 child: Stack(
                                     children:[
                                       Container(
                                         height: width*0.06,
                                         width:width*0.070,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.circular(width*0.03),
                                           color: Colors.white,
                                         ),
                                         child: Center(
                                           child: CircleAvatar(
                                             radius: width*0.025,
                                             backgroundColor: Colors.green.shade500,
                                           ),
                                         ),
                                       ),]
                                 ))
                           ]
                       ),
                       title: Text(listtile1[index]["list1"],style: TextStyle(
                           fontSize: width*0.05,
                           fontWeight: FontWeight.w600
                       ),),
                       subtitle: Text(listtile1[index]["list2"]),
                       trailing: SvgPicture.asset(listtile1[index]["list3"]),
                     ),
                   ),
                         )
                     ],
                   );
                 },
                 separatorBuilder: (context, index) {
                    return SizedBox();
                 },
                 itemCount:listtile1.length),
           )
         ],
       ),
     ),
    ));
  }
}
