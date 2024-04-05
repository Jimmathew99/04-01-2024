import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TextFieldSample extends StatefulWidget {
   TextFieldSample({super.key});

  @override
  State<TextFieldSample> createState() => _TextFieldSampleState();
}

class _TextFieldSampleState extends State<TextFieldSample> {
  bool isPasswordvisible=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
                width: 200.w,
                child: TextField(
                  style: TextStyle(
                    fontSize: 30,

                  ),
                  cursorColor: Colors.red,
                  //cursorHeight: 40,
                  //cursorWidth: 20,
                  decoration: InputDecoration(
                    label: Text("Name"),
                    border: OutlineInputBorder(

                    ),
                    hintText: "Enter your Name",

                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(20).r,
            child: SizedBox(
                width: 200.w,
                child: TextField(
                  style: TextStyle(
                    fontSize: 10.sp,

                  ),
                  cursorColor: Colors.red,
                  //cursorHeight: 40,
                  //cursorWidth: 20,
                  decoration: InputDecoration(
                    label: Text("Email"),
                    border: OutlineInputBorder(

                    ),
                    hintText: "Enter your email",


                  ),
                  keyboardType: TextInputType.phone,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(20).r,
            child: SizedBox(
                width: 200.w,
                child: TextField(
                  style: TextStyle(
                    fontSize: 10.sp,

                  ),
                  cursorColor: Colors.red,
                  //cursorHeight: 40,
                  //cursorWidth: 20,
                  decoration: InputDecoration(
                    suffixIcon: isPasswordvisible?IconButton(onPressed: () {
                      setState(() {
                        isPasswordvisible=!isPasswordvisible;
                      });
                    }, icon: Icon(Icons.visibility)):IconButton(onPressed: () {
                      setState(() {
                        isPasswordvisible=!isPasswordvisible;
                      });

                    }, icon: Icon(Icons.visibility_off)),
                    label: Text("Password"),
                    border: OutlineInputBorder(

                    ),
                    hintText: "Enter your password",


                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isPasswordvisible,
                  
                    
                )),
          )
        ],
      ),

    );
  }
}
