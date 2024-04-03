import 'package:flutter/material.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        
      ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Something goes here"),
              Container(
                color: Colors.black,
                width: 50,height: 50,
                child: Icon(Icons.add),

              ),
              Container(
                 color: Colors.amber,
                width: 50,height: 50,
                child: Icon(Icons.add),

              )
            ],
          )

    );
  }
}
