import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardSample2 extends StatefulWidget {
  const CardSample2({super.key});

  @override
  State<CardSample2> createState() => _CardSample2State();
}

class _CardSample2State extends State<CardSample2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: 350.w,
          height: 460.h,
          child: Card(
            elevation: 10,
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                  ),
                  title: Text("Something",style: TextStyle(
                    fontSize: 20,
                    fontWeight:FontWeight.w500,

                  ),),
                  subtitle: Text("Something else goes here",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal
                  ),),
                ),
                Image.network('https://picsum.photos/250?image=9',width: 350,),

                Padding(
                  padding: const EdgeInsets.only(top: 16,left: 16,bottom: 10,).r,
                  child: Text(
                    "Greyhound is the best bus of the all time. "
                        "The bus has started to go to the stop. daskofjaiofaifaj ",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                Row(
                  children: [
                    TextButton(onPressed: () {}, child: Text("Action 1")),
                    TextButton(onPressed: () {}, child: Text("Action 2")),
                    Icon(Icons.favorite),
                    Icon(Icons.share),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
