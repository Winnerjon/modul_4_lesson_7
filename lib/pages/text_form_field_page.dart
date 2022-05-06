import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldPage extends StatefulWidget {
  static const String id = "text_form_field_page";

  const TextFormFieldPage({Key? key}) : super(key: key);

  @override
  _TextFormFieldPageState createState() => _TextFormFieldPageState();
}

class _TextFormFieldPageState extends State<TextFormFieldPage> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  void _doSingIn(){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      print("Welcome");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TextFormField"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
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
            SizedBox(height: 30,),
            MaterialButton(
              height: 45,
              minWidth: 200,
              color: Colors.blue,
              shape: StadiumBorder(),
              child: Text("Sign In"),
              onPressed: _doSingIn,
            ),
          ],
        ),
      ),
    );
  }
}
