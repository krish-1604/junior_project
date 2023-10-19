import 'package:flutter/material.dart';
import 'package:pillmate/screens/home.dart';

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Image.asset(
                "assets/vector4.png",
                height: 209,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Text(
                    "HOORAY!",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Palanquin Dark",
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "We did together.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFAAAAAA),
                      fontFamily: "Palanquin Dark",
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    "assets/success.png",
                    height: 350,
                    width: 350,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "You are now the part \nof the community.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Palanquin Dark",
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 138,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFF4343),
                          Color(0xFFFF2020),
                          Color(0xFFFF0000),
                        ],
                        stops: [0.65, 0.79, 1],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Text(
                        "Dive In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
