import 'package:flutter/material.dart';

class Num extends StatelessWidget {
  const Num({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              "assets/vector2.png",
              height: 179,
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/vector1.png",
              height: 179,
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                Text(
                  "Verification time!",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Palanquin Dark",
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Enter the One-Time Password(OTP)",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "OTP has been sent at 98XXXXXX36",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
