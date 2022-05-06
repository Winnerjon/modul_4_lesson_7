import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  static const String id = "gesturedetector_page";

  const GestureDetectorPage({Key? key}) : super(key: key);

  @override
  _GestureDetectorPageState createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Gesture Detector"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            print("Salom keling mehmon");
          },
          child: Text("Welcome"),
        ),
      ),
    );
  }
}
