import 'package:flutter/material.dart';

class FormSample extends StatefulWidget {
  const FormSample({super.key});

  @override
  State<FormSample> createState() => _FormSampleState();
}

class _FormSampleState extends State<FormSample> {
  final formkey = GlobalKey<FormState>();
  var textedit = TextEditingController();

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
                return null;
              },
              decoration: InputDecoration(
                  label: Text("Text 1"), border: OutlineInputBorder()),
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
