import 'package:flutter/material.dart';
import 'package:flutter_sample/view/04-09-2024/second_.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context)
          // =>
          //     const Second()
          // ,
          // ));
        //   Navigator.pushNamedAndRemoveUntil(
        //       context, MaterialPageRoute(builder: (context) =>MaterialPageRoute(builder: (context) => Second(),)),
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Second(),));
         }, child: Text("First")),
      ),
    );
  }
}
