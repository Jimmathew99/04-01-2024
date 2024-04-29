import 'package:flutter/material.dart';
class PopupMenuExample extends StatefulWidget {
  const PopupMenuExample({super.key});

  @override
  State<PopupMenuExample> createState() => _PopupMenuExampleState();
}

class _PopupMenuExampleState extends State<PopupMenuExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popup Menu Example"),
        actions: [
          PopupMenuButton(itemBuilder: (context) => [
            PopupMenuItem(child: Text("First"),value: 1,),
            PopupMenuItem(child: Text("Second"),value: 2,),
            PopupMenuItem(child: Text("Three"),value: 3,),


          ],)
        ],
      ),
      
      
    );
  }
}
