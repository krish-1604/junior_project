import 'package:flutter/material.dart';
import 'package:pillmate/screens/overview/1.dart';
import 'package:pillmate/screens/splash/splash.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splashscrn(),
    routes: {
      '/home': (context) => OV1(),
    },
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
    )));
