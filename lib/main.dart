import 'dart:async';

import 'package:flutter/material.dart';

import 'package:uts_anggyanisamp/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: firstlaunch(),
    );
  }
}

class firstlaunch extends StatefulWidget {
  @override
  _firstlaunchState createState() => _firstlaunchState();
}

class _firstlaunchState extends State<firstlaunch> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, getData);
  }

  void getData() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return HomePage();
    }));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "SELAMAT DATANG\nDI TOKO ANGGYANISA",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(5, 10, 5, 15),
            child: const Image(
              image: AssetImage("assets/sepatu.png"),
            ),
          )
        ],
      ),
    );
  }
}
