import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sample/view/04-09-2024/second_.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SplashScreenDemo extends StatefulWidget {
  const SplashScreenDemo({super.key});

  @override
  State<SplashScreenDemo> createState() => _SplashScreenDemoState();
}

class _SplashScreenDemoState extends State<SplashScreenDemo> {
  @override
  Widget build(BuildContext context) {
    Timer(Durations.medium3, () { });
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 300.w,
            height: 200.h,
            child: Lottie.asset('animations/projectanim1.json'),
          ),



        ],
      ),
    );
  }
}
