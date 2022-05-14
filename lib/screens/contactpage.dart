import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  ContactPage({Key? key}) : super(key: key);
  final Uri _email = Uri.parse("mailto:111abhiabhi@gmail.com");
  final Uri _phone = Uri.parse("tel:+919497747142");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundcolor,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () {
                  canLaunchUrl(_phone).then((value) => launchUrl(_phone));
                },
                child: Text("Phone : 9497747142",
                    style: GoogleFonts.caveat(
                        fontSize: 30, color: Colors.blue.shade700))),
            TextButton(
                onPressed: () {
                  canLaunchUrl(_email).then((value) => launchUrl(_email));
                },
                child: Text("Email : 111abhiabhi@gmail.com",
                    style: GoogleFonts.caveat(
                        fontSize: 30, color: Colors.blue.shade700))),
          ],
        ),
      ),
    );
  }
}
