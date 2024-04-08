import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  final registrationkey = GlobalKey<FormState>();
  var namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Something"),
        centerTitle: true,
        foregroundColor: Colors.yellow,
      ),
      body: ListView(
        children: [
          Form(
            key: registrationkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20).r,
                  child: SizedBox(
                      width: 200.w,
                      child: TextFormField(
                        controller: namecontroller,
                        style: TextStyle(
                          fontSize: 30,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Please enter phone number");
                          }
                          return null;
                        },
                        cursorColor: Colors.red,
                        //cursorHeight: 40,
                        //cursorWidth: 20,
                        decoration: InputDecoration(
                          label: Text("Name"),
                          border: OutlineInputBorder(),
                          hintText: "Enter your Name",
                        ),
                      )),
                ),
                TextButton(onPressed: () {}, child: Text("Forgot password ?")),
                SizedBox(
                  width: 200,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("Something")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 80,
                    width: 200,
                    child: TextButton(
                        onPressed: () {
                          if (registrationkey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Success")));
                          }
                        },
                        child: Text("Already have an account?")),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
