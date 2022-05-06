import 'package:flutter/material.dart';

class SliverAppBarPage extends StatefulWidget {
  static const String id = "sliver_appbar_page";

  const SliverAppBarPage({Key? key}) : super(key: key);

  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.grey,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Hotel",
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
              ),
              background: Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/img_5.jpg"),
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              color: Colors.green.shade300,
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: ListTile(
                title: Text("Hotel ${index + 1}"),
                subtitle: Text("Cost: \$${(index + 1) * 100 + index + 12}"),
              ),
            );
          })),
        ],
      ),
    );
  }
}
