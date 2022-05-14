import 'package:flutter/material.dart';
import 'package:myportfolio/colors.dart';
import 'package:myportfolio/screens/contactpage.dart';
import 'package:myportfolio/screens/homepage.dart';
import 'package:myportfolio/screens/projectpage.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

List<Color> colors = [selectedColor, unselectedColor, unselectedColor];
List<Color> brcolors = [selectedColor, backGroundcolor, backGroundcolor];
List<Widget> pages = [const HomePage(), const ProjectsPage(), ContactPage()];
int currentindex = 0;

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    void changecolor(int index) {
      setState(() {
        colors[0] = unselectedColor;
        colors[1] = unselectedColor;
        colors[2] = unselectedColor;
        brcolors[0] = backGroundcolor;
        brcolors[1] = backGroundcolor;
        brcolors[2] = backGroundcolor;

        colors[index] = selectedColor;
        brcolors[index] = selectedColor;
        currentindex = index;
      });
    }

    return Scaffold(
      body: Container(
        height: _height,
        width: _width,
        decoration: BoxDecoration(
          color: backGroundcolor,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: _width * 0.4,
                  child: Text("Abhijith mp",
                      style: GoogleFonts.caveat(
                          fontSize: 30, color: Colors.blue.shade700)),
                ),
                InkWell(
                  onTap: () {
                    changecolor(0);
                  },
                  child: homeButton(
                      height: 70,
                      width: _width * 0.1,
                      brcolor: brcolors[0],
                      txtcolor: colors[0]),
                ),
                InkWell(
                  onTap: () {
                    changecolor(1);
                  },
                  child: projectbutton(
                      height: 70,
                      width: _width * 0.1,
                      brcolor: brcolors[1],
                      txtcolor: colors[1]),
                ),
                InkWell(
                  onTap: () {
                    changecolor(2);
                  },
                  child: contactbutton(
                      height: 70,
                      width: _width * 0.1,
                      brcolor: brcolors[2],
                      txtcolor: colors[2]),
                )
              ],
            ),
            Expanded(child: pages[currentindex]),
          ],
        ),
      ),
    );
  }
}

Widget homeButton({
  required double height,
  required double width,
  required Color brcolor,
  required Color txtcolor,
}) {
  return Container(
    width: width,
    height: height,
    decoration:
        BoxDecoration(border: Border(bottom: BorderSide(color: brcolor))),
    child: Center(
      child: Center(
        child: Text(
          "Home",
          style: GoogleFonts.caveat(fontSize: 18, color: txtcolor),
        ),
      ),
    ),
  );
}

Widget projectbutton({
  required double height,
  required double width,
  required Color brcolor,
  required Color txtcolor,
}) {
  return Container(
    width: width,
    height: height,
    decoration:
        BoxDecoration(border: Border(bottom: BorderSide(color: brcolor))),
    child: Center(
      child: Text(
        "Projects",
        style: GoogleFonts.caveat(fontSize: 18, color: txtcolor),
      ),
    ),
  );
}

Widget contactbutton({
  required double height,
  required double width,
  required Color brcolor,
  required Color txtcolor,
}) {
  return Container(
    width: width,
    height: height,
    decoration:
        BoxDecoration(border: Border(bottom: BorderSide(color: brcolor))),
    child: Center(
      child: Text(
        "Contact",
        style: GoogleFonts.caveat(fontSize: 18, color: txtcolor),
      ),
    ),
  );
}
