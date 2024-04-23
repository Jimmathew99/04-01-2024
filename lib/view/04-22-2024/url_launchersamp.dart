import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlSample extends StatefulWidget {
  const UrlSample({super.key});

  @override
  State<UrlSample> createState() => _UrlSampleState();
}

class _UrlSampleState extends State<UrlSample> {
  openWebpage() async {
    var url = "https://google.com";
    await launchUrl(Uri.parse(url));
  }

  openPhoneApp() async {
    String telephonenumber = '4167035996';
    String telephoneUrl = "tel:$telephonenumber";
    await launchUrl(Uri.parse(telephoneUrl));
  }

  openGmail() async {
    String email = 'jimmathew1999@gmail.com';
    String subject = 'Test email';
    String body = 'Test body';
    String emailUrl = "mailto$email?subject=$subject&body=$body";
    await launchUrl(Uri.parse(emailUrl));
  }

  openSms() async {
    String telephonenumber = '+7148956978';
    String smsUrl = "sms:$telephonenumber";
    await launchUrl(Uri.parse(smsUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    openPhoneApp();
                  });
                },
                child: Text("Call")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    openGmail();
                  });
                },
                child: Text("Gmail")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    openSms();
                  });
                },
                child: Text("SMS")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    openWebpage();
                  });
                },
                child: Text("Webpage"))
          ],
        ),
      ),
    );
  }
}
