import 'package:flutter/material.dart';
import '../../../main.dart';
import 'forms.dart';

class Body extends StatefulWidget {
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<Body> {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            width: double.infinity,
            color: Color(0xFFF6F6F6),
            child: Column(children: <Widget>[
              Forms(),
              Container(
                  padding: EdgeInsets.only(left: 110),
                  child: Row(children: <Widget>[
                    Text("Have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Sign In"))
                  ]))
            ])));
  }
}
