import 'package:flutter/material.dart';

class FlexibleExample extends StatefulWidget {
  const FlexibleExample({super.key});

  @override
  State<FlexibleExample> createState() => _FlexibleExampleState();
}

class _FlexibleExampleState extends State<FlexibleExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flex Example"),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.orange,
            ),
          ),

          Flexible(
            flex: 3,
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    color: Colors.purple,
                  ),
                  flex: 2, // Flexible inside Row takes 2/3 of the Row's space
                ),
              ],
            ),
          ),

          Flexible(
            child: Container(
              color: Colors.pink,
            ),
            flex: 3, // Fills remaining space in Column (can adjust for different ratios)
          ),
        ],
      ),
    );
  }
}
