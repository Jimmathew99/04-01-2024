import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhatsAppSample extends StatelessWidget {
  const WhatsAppSample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp", style: TextStyle(
            color: Colors.white,

          ),),


          backgroundColor: Color(0xFF008069),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: () {

              },
            ),
            SizedBox(width: 10.w),
            IconButton(
              icon: Icon(Icons.chat),
              color: Colors.white,
              onPressed: () {

              },
            ),
            SizedBox(width: 10.w),
            IconButton(
              icon: Icon(Icons.more_vert_rounded),
              color: Colors.white,
              onPressed: () {

              },
            ),
          ],
          bottom: TabBar(tabs: [
            Tab(
              text: "CALLS",
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: 'CONTACTS',
            
            )
          ]),
        ),
        body: TabBarView(children: [
          Text("CALLS"),
          Text("CHATS"),
          Text("CONTACTS"),
        ]),


      ),
    );
  }
}
