import 'package:flutter/material.dart';

class DecorationPage extends StatefulWidget {
  static const String id = "decoration_page";

  const DecorationPage({Key? key}) : super(key: key);

  @override
  _DecorationPageState createState() => _DecorationPageState();
}

class _DecorationPageState extends State<DecorationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Decoration"),
      ),
      body: Container(
        color: Colors.grey.shade400,
        child: Center(
          child: Container(
            // color: Colors.grey,
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/img_4.jpg"),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
