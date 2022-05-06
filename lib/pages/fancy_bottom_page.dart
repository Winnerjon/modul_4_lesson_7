import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class FancyBottomPage extends StatefulWidget {
  static const String id = "fancy_bottom_page";

  const FancyBottomPage({Key? key}) : super(key: key);

  @override
  _FancyBottomPageState createState() => _FancyBottomPageState();
}

class _FancyBottomPageState extends State<FancyBottomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("FancyBottomNavigation"),
      ),
      body: Center(
        child: Text("Hello"),
      ),

      //package chaqiriladi:
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.search, title: "Search"),
          TabData(iconData: Icons.shopping_cart, title: "Basket"),
        ],
        onTabChangedListener: (position){},
      ),
    );
  }
}
