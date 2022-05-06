import 'package:flutter/material.dart';
import 'package:modul_4_lesson_7/pages/container_gradient_page.dart';
import 'package:modul_4_lesson_7/pages/customized_button_page.dart';
import 'package:modul_4_lesson_7/pages/decoration_page.dart';
import 'package:modul_4_lesson_7/pages/fancy_bottom_page.dart';
import 'package:modul_4_lesson_7/pages/first_task_page.dart';
import 'package:modul_4_lesson_7/pages/gesturedetector_page.dart';
import 'package:modul_4_lesson_7/pages/home_page.dart';
import 'package:modul_4_lesson_7/pages/navigator_rail_page.dart';
import 'package:modul_4_lesson_7/pages/second_task_page.dart';
import 'package:modul_4_lesson_7/pages/sliver_appbar_page.dart';
import 'package:modul_4_lesson_7/pages/speed_dial_page.dart';
import 'package:modul_4_lesson_7/pages/text_field_page.dart';
import 'package:modul_4_lesson_7/pages/text_form_field_page.dart';
import 'package:modul_4_lesson_7/pages/third_task_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        HomePage.id: (context)=> HomePage(),
        DecorationPage.id: (context)=> DecorationPage(),
        ContainerGradientPage.id: (context)=> ContainerGradientPage(),
        CustomizedButtonPage.id: (context)=> CustomizedButtonPage(),
        GestureDetectorPage.id: (context)=> GestureDetectorPage(),
        TextFieldPage.id: (context)=> TextFieldPage(),
        TextFormFieldPage.id: (context)=> TextFormFieldPage(),
        SpeedDialPage.id: (context)=> SpeedDialPage(),
        FancyBottomPage.id: (context)=> FancyBottomPage(),
        SliverAppBarPage.id:(context)=>SliverAppBarPage(),
        NavigatorRailPage.id:(context)=>NavigatorRailPage(),
        FirstTaskPage.id:(context)=>FirstTaskPage(),
        SecondTaskPage.id:(context)=>SecondTaskPage(),
        ThirdTaskPage.id:(context)=>ThirdTaskPage(),
      },
    );
  }
}
