import 'package:flutter/material.dart';

class InkWellSample extends StatefulWidget {
  const InkWellSample({super.key});

  @override
  State<InkWellSample> createState() => _InkWellSampleState();
}

class _InkWellSampleState extends State<InkWellSample> {

  int _count=0;
  incrementcounter(){
    setState(() {
      _count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              child: Text("Click"),
              onTap: () {
                incrementcounter();
              },
            ),
          ),
          Text("$_count")
        ],

      ),
    );
  }
}
