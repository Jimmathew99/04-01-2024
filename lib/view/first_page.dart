import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Something goes here") ,
         centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.pinkAccent,


      ),
      body: Center(
        child: Text("this is sick"),

      ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          splashColor: Colors.cyan,
          child: Container(
            height: 20,width: 30,
            color: Colors.cyanAccent,
          ),
          onPressed: () {



          },

        ),







    );
      // floatingActinButtonLocation: FloatingActionButtonLocation.miniStartDocked,






  }
}
