import 'package:flutter/material.dart';
class TextSample extends StatelessWidget {
  const TextSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,

      ),
      body: Column(
        children: [
          Text("Something goes here",
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 60.2,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            letterSpacing: 10,
            wordSpacing: 40,


          ),),
          Text("Hello World",
            style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 60,
              fontFamily: 'TacOne',

          ),),
          Text("Hello World",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 60,
              fontFamily: 'BungeeSpice',
              color: Colors.black

            ),),



        ],
      )

    );
  }
}
