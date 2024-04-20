import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ToastSample extends StatefulWidget {
  const ToastSample({super.key});

  @override
  State<ToastSample> createState() => _ToastSampleState();
}

class _ToastSampleState extends State<ToastSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Column(
        children: [
          ElevatedButton(onPressed: () {
            setState(() {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("ok")));
            });

          }, child: Text("Snackbar")),
          ElevatedButton(onPressed: () {
            setState(() {
              Fluttertoast.showToast(
                  msg: "This is Center Short Toast",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            });



          }, child: Text("Toast"))
        ],

      ),

    );
  }
}
