import 'package:flutter/material.dart';
import 'package:flutter_sample/view/04-29-2024/popup_menu.dart';

class BottomNavigationBarExample extends StatelessWidget {
  const BottomNavigationBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context) => PopupMenuExample(),), (
                    route) => false);
          },
          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.propane), label: "profile"),
          ]),
      appBar: AppBar(
        title: Text("Yeah"),
      ),

    );
  }
}
