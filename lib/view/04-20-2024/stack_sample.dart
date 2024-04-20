import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class StackSample extends StatefulWidget {
  const StackSample({super.key});

  @override
  State<StackSample> createState() => _StackSampleState();
}

class _StackSampleState extends State<StackSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Positioned(
            bottom: 100,
            top: 50,
            child: Container(
              height: 500.h,
              width: 250.w,
              color: Colors.red,

            ),
          ),
          Container(
            height: 250.h,
            width: 150.w,
            color: Colors.black,
          ),
          Container(
            width: 20.w,
            height: 25.h,
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}
