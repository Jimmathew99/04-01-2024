import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackExample extends StatefulWidget {
  const StackExample({super.key});

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/nyc.jpg'),
                fit: BoxFit.fitHeight,
              ),

            ),
          ),
          Positioned(
            bottom: 300,
            left: 55,
            right: 50,
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0).r,
                    child: Text("New York",style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,

                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0).r,
                    child: Text(" Im supposed to write a long sentences here but im too lazy to"
                        "something. so im going to use this instead that i have to make"
                        "really long."),
                  )
                ],

              ),

            ),
          ),

        ],
      ),
    );
  }
}
