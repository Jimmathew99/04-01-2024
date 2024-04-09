import 'package:flutter/material.dart';

class CheckboxSample extends StatefulWidget {
  const CheckboxSample({super.key});

  @override
  State<CheckboxSample> createState() => _CheckboxSampleState();
}

class _CheckboxSampleState extends State<CheckboxSample> {
  bool check1 = true;
  bool check2 = false;
  bool check3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          "Gender",
        ),
        foregroundColor: Colors.white70,
        centerTitle: true,
      ),
      body: Column(children: [
        Row(
          children: [
            Checkbox(
              value: check1,
              onChanged: (value) {
                setState(() {
                  check1 = value!;
                });
              },
            ),
            Text("Java")
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: check2,
              onChanged: (value) {
                setState(() {
                  check2 = value!;
                });
              },
            ),
            Text("dart")
          ],
        ),
        CheckboxListTile(
          value: check3,
          onChanged: (value) {
            setState(() {
              check3 = value!;
            });
          },
          title: Text("Flutter"),
          controlAffinity: ListTileControlAffinity.leading,
        )
      ]),
    );
  }
}
