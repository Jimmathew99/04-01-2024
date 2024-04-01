import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
     // backgroundColor: Colors.teal,
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),

        children: [
          FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.stacked,
            textColor: Colors.black12,


          ),
          FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.stacked,
            textColor: Colors.black12,


          ),
          FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.stacked,
            textColor: Colors.black12,


          ),
          FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.stacked,
            textColor: Colors.black12,


          ),
          FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.stacked,
            textColor: Colors.black12,


          ),
          FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.stacked,
            textColor: Colors.black12,


          ),
          FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.stacked,
            textColor: Colors.black12,


          ),
          FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.stacked,
            textColor: Colors.black12,


          ),
        ],

      ),
    );
  }
}
