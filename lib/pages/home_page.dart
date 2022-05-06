import 'package:flutter/material.dart';
import 'package:modul_4_lesson_7/pages/container_gradient_page.dart';
import 'package:modul_4_lesson_7/pages/customized_button_page.dart';
import 'package:modul_4_lesson_7/pages/decoration_page.dart';
import 'package:modul_4_lesson_7/pages/fancy_bottom_page.dart';
import 'package:modul_4_lesson_7/pages/first_task_page.dart';
import 'package:modul_4_lesson_7/pages/gesturedetector_page.dart';
import 'package:modul_4_lesson_7/pages/navigator_rail_page.dart';
import 'package:modul_4_lesson_7/pages/second_task_page.dart';
import 'package:modul_4_lesson_7/pages/sliver_appbar_page.dart';
import 'package:modul_4_lesson_7/pages/speed_dial_page.dart';
import 'package:modul_4_lesson_7/pages/text_field_page.dart';
import 'package:modul_4_lesson_7/pages/text_form_field_page.dart';
import 'package:modul_4_lesson_7/pages/third_task_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Page"),
      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //#decoration
                MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.blueAccent.shade700,
                  onPressed: () {
                    Navigator.of(context).pushNamed(DecorationPage.id);
                  },
                  child: Text(
                    "Decoration Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //#gradiend
                MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.blueAccent.shade700,
                  onPressed: () {
                    Navigator.of(context).pushNamed(ContainerGradientPage.id);
                  },
                  child: Text(
                    "Gradiend Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //#customized
                MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.blueAccent.shade700,
                  onPressed: () {
                    Navigator.of(context).pushNamed(CustomizedButtonPage.id);
                  },
                  child: Text(
                    "Customized Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //#gesturedetector
                MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.blueAccent.shade700,
                  onPressed: () {
                    Navigator.of(context).pushNamed(GestureDetectorPage.id);
                  },
                  child: Text(
                    "GestureDetector Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //#textField
                MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.blueAccent.shade700,
                  onPressed: () {
                    Navigator.of(context).pushNamed(TextFieldPage.id);
                  },
                  child: Text(
                    "TextField Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //#textForm
                MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.blueAccent.shade700,
                  onPressed: () {
                    Navigator.of(context).pushNamed(TextFormFieldPage.id);
                  },
                  child: Text(
                    "TextFormField Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //#speedDial
                MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.blueAccent.shade700,
                  onPressed: () {
                    Navigator.of(context).pushNamed(SpeedDialPage.id);
                  },
                  child: Text(
                    "SpeedDial Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //#fancyBottom
                MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.blueAccent.shade700,
                  onPressed: () {
                    Navigator.of(context).pushNamed(FancyBottomPage.id);
                  },
                  child: Text(
                    "FancyBottom Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //#sliveAppBar
                MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.blueAccent.shade700,
                  onPressed: () {
                    Navigator.of(context).pushNamed(SliverAppBarPage.id);
                  },
                  child: Text(
                    "SliverAppBar Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //#navigationRail
                MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.blueAccent.shade700,
                  onPressed: () {
                    Navigator.of(context).pushNamed(NavigatorRailPage.id);
                  },
                  child: Text(
                    "NavigationRail Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //#firstTask
                MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.blueAccent.shade700,
                  onPressed: () {
                    Navigator.of(context).pushNamed(FirstTaskPage.id);
                  },
                  child: Text(
                    "FirstTask Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //#secondTask
                MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.blueAccent.shade700,
                  onPressed: () {
                    Navigator.of(context).pushNamed(SecondTaskPage.id);
                  },
                  child: Text(
                    "SecondTask Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //#thirdTask
                MaterialButton(
                  shape: StadiumBorder(),
                  color: Colors.blueAccent.shade700,
                  onPressed: () {
                    Navigator.of(context).pushNamed(ThirdTaskPage.id);
                  },
                  child: Text(
                    "ThirdTask Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
