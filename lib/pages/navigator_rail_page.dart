import 'package:flutter/material.dart';

class NavigatorRailPage extends StatefulWidget {
  static const String id = "navigator_rail_page";

  const NavigatorRailPage({Key? key}) : super(key: key);

  @override
  _NavigatorRailPageState createState() => _NavigatorRailPageState();
}

class _NavigatorRailPageState extends State<NavigatorRailPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Row(
          children: [
            NavigationRail(
              labelType: NavigationRailLabelType.selected,
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: Image(
                  image: AssetImage("assets/images/img_2.jpg"),
                ),
              ),
              groupAlignment: 1,
              backgroundColor: Colors.blueGrey.shade800,
              onDestinationSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              destinations: [
                NavigationRailDestination(
                  label: SizedBox.shrink(),
                  icon: Icon(
                    Icons.tune_outlined,
                    color: Colors.white,
                  ),
                  selectedIcon: Icon(
                    Icons.tune,
                    color: Colors.yellowAccent,
                  ),
                ),
                NavigationRailDestination(
                  padding: EdgeInsets.only(bottom: 5, top: 80),
                  label: SizedBox.shrink(),
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Popular",
                      style: TextStyle(
                          color: Colors.yellowAccent,
                          decoration: TextDecoration.underline,
                          fontSize: 17),
                    ),
                  ),
                  icon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Popular",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  label: SizedBox.shrink(),
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Favourites",
                      style: TextStyle(
                          color: Colors.yellowAccent,
                          decoration: TextDecoration.underline,
                          fontSize: 17),
                    ),
                  ),
                  icon: RotatedBox(
                    quarterTurns: 3,
                    child: SizedBox(
                      child: Text(
                        "Favourites",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  label: SizedBox.shrink(),
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Inspiration",
                      style: TextStyle(
                          color: Colors.yellowAccent,
                          decoration: TextDecoration.underline,
                          fontSize: 17),
                    ),
                  ),
                  icon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Inspiration",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
                NavigationRailDestination(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  label: SizedBox.shrink(),
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "All",
                      style: TextStyle(
                          color: Colors.yellowAccent,
                          decoration: TextDecoration.underline,
                          fontSize: 17),
                    ),
                  ),
                  icon: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "All",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
              ],
              selectedIndex: selectedIndex,
            ),
          ],
        ),
      ),
    );
  }
}
