import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  bool ispasswordvisible = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("Register"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: 200.w,
            child: Padding(
              padding: const EdgeInsets.all(20.0).r,
              child: TextField(
                style: TextStyle(
                  fontSize: 10,
                ),
                decoration: InputDecoration(
                    label: Text("Phone Number"),
                    border: OutlineInputBorder(),
                    hintText: "Enter your phone number"),
                keyboardType: TextInputType.phone,
              ),
            ),
          ),
          SizedBox(
            width: 200.w,
            child: Padding(
              padding: const EdgeInsets.all(20.0).r,
              child: TextField(
                style: TextStyle(
                  fontSize: 10,
                ),
                decoration: InputDecoration(
                  label: Text("Address"),
                  border: OutlineInputBorder(),
                  hintText: "Address",
                ),
                keyboardType: TextInputType.streetAddress,
              ),
            ),
          ),
          SizedBox(
            width: 200.w,
            child: Padding(
              padding: const EdgeInsets.all(20.0).r,
              child: TextField(
                style: TextStyle(
                  fontSize: 10,
                ),
                decoration: InputDecoration(
                  label: Text("Company Name"),
                  border: OutlineInputBorder(),
                  hintText: "Company name",
                ),
                keyboardType: TextInputType.name,
              ),
            ),
          ),
          SizedBox(
            width: 200.w,
            child: Padding(
              padding: const EdgeInsets.all(20.0).r,
              child: TextField(
                style: TextStyle(
                  fontSize: 10,
                ),
                decoration: InputDecoration(
                  label: Text("Website name"),
                  border: OutlineInputBorder(),
                  hintText: "Website name",
                ),
                keyboardType: TextInputType.name,
              ),
            ),
          ),
          SizedBox(
            width: 200.w,
            child: Padding(
              padding: const EdgeInsets.all(20.0).r,
              child: TextField(
                style: TextStyle(
                  fontSize: 10,
                ),
                decoration: InputDecoration(
                  label: Text("Email address"),
                  border: OutlineInputBorder(),
                  hintText: "Email address",
                ),
                keyboardType: TextInputType.name,
              ),
            ),
          ),
          SizedBox(
            width: 200.w,
            child: Padding(
              padding: const EdgeInsets.all(20.0).r,
              child: TextField(
                style: TextStyle(
                  fontSize: 10,
                ),
                decoration: InputDecoration(
                  suffixIcon: ispasswordvisible
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              ispasswordvisible = !ispasswordvisible;
                            });
                          },
                          icon: Icon(Icons.visibility))
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              ispasswordvisible = !ispasswordvisible;
                            });
                          },
                          icon: Icon(Icons.visibility_off)),
                  label: Text("Password"),
                  border: OutlineInputBorder(),
                  hintText: "Enter your password",
                ),
                keyboardType: TextInputType.name,
                obscureText: ispasswordvisible,
              ),
            ),
          )
        ],
      ),
    );
  }
}
