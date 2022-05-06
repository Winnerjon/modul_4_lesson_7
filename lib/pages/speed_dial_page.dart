import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SpeedDialPage extends StatefulWidget {
  static const String id = "speed_dial_page";

  const SpeedDialPage({Key? key}) : super(key: key);

  @override
  _SpeedDialPageState createState() => _SpeedDialPageState();
}

class _SpeedDialPageState extends State<SpeedDialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SpeedDial"),
      ),

      //package chaqiriladi:
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: ()=>print("Opening Dial"),
        onClose: ()=>print("Dial Closed"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            child: Icon(Icons.accessibility),
            backgroundColor: Colors.red,
            label: "First",
            labelStyle: TextStyle(fontSize: 17),
            onTap: ()=>print("First child"),
          ),
          SpeedDialChild(
            child: Icon(Icons.brush),
            backgroundColor: Colors.blue,
            label: "Second",
            labelStyle: TextStyle(fontSize: 17),
            onTap: ()=>print("Second child"),
          ),
          SpeedDialChild(
            child: Icon(Icons.keyboard_voice),
            backgroundColor: Colors.green,
            label: "Third",
            labelStyle: TextStyle(fontSize: 17),
            onTap: ()=>print("Third child"),
          ),
        ],
      ),
    );
  }
}
