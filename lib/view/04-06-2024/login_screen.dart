import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var passcontroller = TextEditingController();
  var usercontroller = TextEditingController();
  final loginkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Login"),
          foregroundColor: Colors.yellowAccent,
          centerTitle: true,
        ),
        body: Form(
          key: loginkey,
          child: SingleChildScrollView(
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
            child: Lottie.asset('animations/loginanim2.json'),
            width: 500.w,
            height: 300.h,
          ),
          SingleChildScrollView(
            child: SizedBox(
              width: 600.w,
              child: Padding(
                padding: const EdgeInsets.all(20.0).r,
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty){
                      return("Please enter your username");
                    }
                    return null;
                  },
                    controller: usercontroller,
                    style: TextStyle(),
                decoration: InputDecoration(
                    label: Text("Username"),
                    prefixIcon: Icon(CupertinoIcons.person),
                    border: OutlineInputBorder(),
                    hintText: "Enter username"),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0).r,
          child: TextFormField(
            validator: (value) {
              if(value!.isEmpty){
                return("Please enter your password");
              }
              return null;
            },
            controller: passcontroller,
            decoration: InputDecoration(
              label: Text("Password"),
              border: OutlineInputBorder(),
              hintText: "Enter password",
              prefixIcon: Icon(Icons.lock),
            ),
          ),
        ),
        TextButton(onPressed: () {}, child: Text("Forgot password?")),
        ElevatedButton(onPressed: () {
          if (loginkey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Success")));
          }
        }, child: Text("Login")),
        ])),
    )
    ,
    );
  }
}
