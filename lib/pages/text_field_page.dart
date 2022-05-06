import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  static const String id = "text_field_page";

  const TextFieldPage({Key? key}) : super(key: key);

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TextField"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.grey,
        child: Column(
          children: [
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.5),
                color: Colors.white,
              ),
              child: TextField(
                obscuringCharacter: "*",
                obscureText: true ,
                onChanged: (value){},
                style: TextStyle(fontSize: 18,color: Colors.black54),
                decoration: InputDecoration(
                  hintText: "Phone",
                  hintStyle: TextStyle(fontSize: 15,color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.phone_iphone_outlined,color: Colors.grey,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
