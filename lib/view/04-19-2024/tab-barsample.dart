import 'package:flutter/material.dart';
class TabBarSample extends StatefulWidget {
  const TabBarSample({super.key});

  @override
  State<TabBarSample> createState() => _TabBarSampleState();
}

class _TabBarSampleState extends State<TabBarSample> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.access_time_outlined),
      
            ),
            Tab(
              icon: Icon(Icons.access_time),
            ),
          ]),
      
        ),
        body: TabBarView(children: [
          Icon(Icons.access_time_outlined),
          Icon(Icons.access_time),
        ])
      
      ),
    );
  }
}
