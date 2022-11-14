import 'package:flutter/material.dart';

import '../../../widgets/BottomAppBar.dart';

class Body extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Body> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Row(),
        Row(),
        Row(children: <Widget>[Column()])
      ]),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
