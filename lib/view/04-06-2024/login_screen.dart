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
  var logincontroller = TextEditingController();

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child:Lottie.asset('animations/loginanim.json'),
                  width: 700,
                  height: 500,
                ),
              SingleChildScrollView(
                child: SizedBox(
                width: 200.w,
                child: TextFormField(
                  controller: logincontroller,
                  style: TextStyle(
                
                  ),
                  decoration: InputDecoration(
                    label: Text("Username"),

                
                  ),

                          
                          
                ),

                          
                          
                          ),
              ),
            Padding(
              padding: const EdgeInsets.all(20.0).r,
              child: TextFormField(
                decoration: InputDecoration(
                  label: Text("Password"),




                ),
              ),
            ),
            
            
            ElevatedButton(onPressed: () {
            
            }, child: Text("Login"))
            
                ]
                ,
            
                ),
          ),
        )
    ,

    );
  }
}

