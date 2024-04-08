import 'package:flutter/material.dart';
class RadioSample extends StatefulWidget {
  const RadioSample({super.key});

  @override
  State<RadioSample> createState() => _RadioSampleState();
}

class _RadioSampleState extends State<RadioSample> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: [
          Row(
            children: [
              Radio(value: "male", groupValue: gender, onChanged: (value) {
                setState(() {
                  gender=value;
                });
              
              },),
              Text("male")
            ],
          ),
          Row(
            children: [
              Radio(value: "female", groupValue: gender, onChanged: (value) {
                setState(() {
                  gender=value;
                });

              },),
              Text("female")
            ],
          ),
          Row(
            children: [
              Radio(value: "other", groupValue: gender, onChanged: (value) {
                setState(() {
                  gender=value;
                });

              },),
              Text("other")
            ],
          ),
          Text("Selected Genders $gender")
        ],
      ),
    );
  }
}
