import 'package:flutter/material.dart';
import 'package:pillmate/screens/home.dart';
import 'package:pillmate/screens/verify/email.dart';
import 'package:pillmate/screens/verify/number.dart';
import 'package:pillmate/screens/verify/success.dart';

class Email extends StatelessWidget {
  const Email({Key? key}) : super(key: key);

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
                    "Enter the One-Time Password (OTP)",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "OTP has been sent at hello@example.com",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OTPTextField(),
                      SizedBox(
                        width: 10,
                      ),
                      OTPTextField(),
                      SizedBox(
                        width: 10,
                      ),
                      OTPTextField(),
                      SizedBox(
                        width: 10,
                      ),
                      OTPTextField(),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "RESEND OTP IN XX SECONDS",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 138,
                    height: 45,
                    decoration: BoxDecoration(
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
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Success()));
                      },
                      child: Text(
                        "Verify",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  Text(
                    "-VERIFY WITH MOBILE-",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: 138,
                    height: 45,
                    decoration: BoxDecoration(
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
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Num()));
                      },
                      child: Text(
                        "MOBILE",
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

class OTPTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          counter: Offstage(),
        ),
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
