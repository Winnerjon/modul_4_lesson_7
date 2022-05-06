import 'package:flutter/material.dart';

class ContainerGradientPage extends StatefulWidget {
  static const String id = "container_gradient-page";

  const ContainerGradientPage({Key? key}) : super(key: key);

  @override
  _ContainerGradientPageState createState() => _ContainerGradientPageState();
}

class _ContainerGradientPageState extends State<ContainerGradientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Container Gradient"),
      ),
      body: Container(
        color: Colors.grey.shade500,
        child: Center(
          child: Container(
            height: 220,
            width: 220,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/img_3.jpg")
              ),borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.3),
                  ]
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
