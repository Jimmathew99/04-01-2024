import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandedExample extends StatefulWidget {
  const ExpandedExample({super.key});

  @override
  State<ExpandedExample> createState() => _ExpandedExampleState();
}

class _ExpandedExampleState extends State<ExpandedExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Ex"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              width: 50.w,
              height: 50.h,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              width: 50.w,
              height: 50.h,
              color: Colors.green,
            ),
          ),
          Container(
            width: 50.w,
            height: 50.h,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
