import 'package:flutter/material.dart';

class CustomizedButtonPage extends StatefulWidget {
  static const String id = "customized_button_page";

  const CustomizedButtonPage({Key? key}) : super(key: key);

  @override
  _CustomizedButtonPageState createState() => _CustomizedButtonPageState();
}

class _CustomizedButtonPageState extends State<CustomizedButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Customized Button"),
      ),
      body: Container(
        child: Center(
          child: Container(
            height: 50,
            width: 250,
            child: MaterialButton(
              onPressed: (){},
              color: Colors.blue,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text("Sign Up"),
            ),
          ),
        ),
      ),
    );
  }
}
