import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Something goes here"),
        centerTitle: true,
        foregroundColor: Colors.black,
        leading:const Icon(Icons.add_a_photo_sharp) ,
        actions:const [
          Icon(Icons.more_horiz_sharp)
        ],


      ),
      body: const Column(
        children:[
          Icon(Icons.accessible_forward),
          Icon(Icons.account_balance),


        ],
      )



    );
  }
}
