import 'package:flutter/material.dart';

class FormSample extends StatefulWidget {
  const FormSample({super.key});

  @override
  State<FormSample> createState() => _FormSampleState();
}

class _FormSampleState extends State<FormSample> {
  final formkey = GlobalKey<FormState>();
  var textedit = TextEditingController();
  var nameedit=TextEditingController();
  var passedit=TextEditingController();
  var phoneedit=TextEditingController();
  var useredit=TextEditingController();
  var emailpattern=RegExp(r'^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$');
  var namepattern=RegExp(r'^[a-zA-Z]+(?:[ -][a-zA-Z]+)*$');
  var passpatern=RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+{}\[\]:;<>,.?~])[a-zA-Z\d!@#$%^&*()_+{}\[\]:;<>,.?~]{8,12}$');
  var phonepattern=RegExp(r'^[0-9]{3}-[0-9]{3}-[0-9]{4}$');
  var userpattern=RegExp(r'^[a-zA-Z0-9_-]{3,16}$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        centerTitle: true,
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: textedit,
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Please enter Text");
                }
                else if(!emailpattern.hasMatch(value)){
                  return 'Please enter valid email';
                }
                return null;
              },
              decoration: InputDecoration(
                  label: Text("Text 1"), border: OutlineInputBorder()),
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: nameedit,
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Please enter  name");
                }
                else if(!namepattern.hasMatch(value)){
                  return 'Please enter fullname ';
                }
                return null;
              },
              decoration: InputDecoration(
                  label: Text("Full name"), border: OutlineInputBorder()),
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: passedit,
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Please enter Password");
                }
                else if(!passpatern.hasMatch(value)){
                  return 'Please enter Password that is 8-12 characters ';
                }
                return null;
              },
              decoration: InputDecoration(
                  label: Text("Password"), border: OutlineInputBorder()),
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              controller: phoneedit,
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Please enter Phone number");
                }
                else if(!phonepattern.hasMatch(value)){
                  return 'Please enter Phone number like this 416-703-5996 ';
                }
                return null;
              },
              decoration: InputDecoration(
                  label: Text("Phone number"), border: OutlineInputBorder()),
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              controller: useredit,
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Please enter username");
                }
                else if(!userpattern.hasMatch(value)){
                  return 'Please enter username ';
                }
                return null;
              },
              decoration: InputDecoration(
                  label: Text("Username"), border: OutlineInputBorder()),
            ),
            ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("Success")));
                  }
                },
                child: Text("Something")),
          ],
        ),
      ),
    );
  }
}
