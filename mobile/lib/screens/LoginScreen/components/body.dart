import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Body> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 25, bottom: 0),
            child: TextFormField(
              controller: emailController,
              cursorColor: Color.fromARGB(255, 124, 108, 119),
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 124, 108, 119), width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 209, 208, 1163), width: 1.0),
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      color: Color.fromARGB(255, 124, 108, 119),
                      fontWeight: FontWeight.bold),
                  hintText: 'Enter valid email as abc@gmail.com'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            child: TextFormField(
              controller: passwordController,
              cursorColor: Color.fromARGB(255, 124, 108, 119),
              obscureText: true,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 124, 108, 119), width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 209, 208, 1163), width: 1.0),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                      color: Color.fromARGB(255, 124, 108, 119),
                      fontWeight: FontWeight.bold),
                  hintText: 'Enter password'),
            ),
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Color(0xff502F4C),
                borderRadius: BorderRadius.circular(40)),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 124, 108, 119)),
              onPressed: () {},
              child: Text(
                'Sign In',
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Don't Have An Account?"),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, CreateAccountScreen.routeName);
                  },
                  child: Text("Click Here"))
            ])
          ]),
        ]),
      ),
    );
  }
}
