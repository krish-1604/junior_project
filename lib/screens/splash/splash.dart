import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pillmate/screens/splash/screen.dart';

class splashscrn extends StatefulWidget {
  const splashscrn({Key? key}) : super(key: key);

  @override
  State<splashscrn> createState() => _splashscrnState();
}

class _splashscrnState extends State<splashscrn> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Screen()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              "assets/vector2.png",
              height: 259,
            ),
          ),
          Center(
            child: Image.asset(
              "assets/logo.png",
              height: 300,
              width: 300,
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/vector1.png",
              height: 259,
            ),
          ),
        ],
      ),
    );
  }
}
