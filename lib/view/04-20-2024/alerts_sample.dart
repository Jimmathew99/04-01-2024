import 'dart:io';

import 'package:flutter/material.dart';

class AlertSample extends StatefulWidget {
  const AlertSample({super.key});

  @override
  State<AlertSample> createState() => _ButtonSampleState();
}

class _ButtonSampleState extends State<AlertSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                title: Text("Exit app"),
                actions: [
                  ElevatedButton(onPressed: () {
                    exit(0);
                  }, child: Text("Okay")),

                ],
                content: Text("Do you want to exit app?"),
              );
            },);
          }, child: Text("One"))
        ],
      ),
    );
  }
}
