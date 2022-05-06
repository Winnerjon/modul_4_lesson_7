import 'package:flutter/material.dart';

class SecondTaskPage extends StatefulWidget {
  static const String id = "second_task-page";

  const SecondTaskPage({Key? key}) : super(key: key);

  @override
  _SecondTaskPageState createState() => _SecondTaskPageState();
}

class _SecondTaskPageState extends State<SecondTaskPage> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  void _doSingIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print("Welcome");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Instagram",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                validator: (input) =>
                    !input!.contains("@") ? "Please enter a valid email" : null,
                onSaved: (input) => _email = input,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextFormField(
                decoration: InputDecoration(labelText: "Password"),
                validator: (input) =>
                    input!.length < 6 ? "Must be at least 6 characters" : null,
                onSaved: (input) => _password = input,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              height: 45,
              minWidth: 200,
              color: Colors.blue,
              shape: StadiumBorder(),
              child: Text("Sign In"),
              onPressed: _doSingIn,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: TextStyle(fontSize: 16,color: Colors.grey),),
                  SizedBox(width: 10,),
                  Text("Sign Up",style: TextStyle(fontSize: 16,color: Colors.blue,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
