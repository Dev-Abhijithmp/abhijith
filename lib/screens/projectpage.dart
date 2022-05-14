import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/colors.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundcolor,
      body: Column(
        children: [
          Center(
            child: Text(
              "Projects",
              style:
                  GoogleFonts.caveat(fontSize: 30, color: Colors.red.shade700),
            ),
          ),
        ],
      ),
    );
  }
}
