import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardSample extends StatefulWidget {
  const CardSample({super.key});

  @override
  State<CardSample> createState() => _CardSampleState();
}

class _CardSampleState extends State<CardSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 200.h,
              width: 100.w,
              child: Card(
                child: Text("Click"),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 200.h,
              width: 500.w,
              child: Card(
                elevation: 10,
                shadowColor: Colors.black,
                shape: OutlineInputBorder(),

                child: Column(
                  children: [
                    Image.network(

                          'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif' ,
                      // width: 200,
                      // height: 150,
                    ),

                  ],

    )


                //Text("Click"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
