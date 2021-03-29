import 'package:church/css/css.dart';
import 'package:church/screens/login/login_components/login_components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset(
              "images/fundo.jpg",
              fit: BoxFit.cover,
              height: 700,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Color.fromRGBO(255, 255, 255, 0),
                  Color.fromRGBO(9, 19, 29, 1),
                ], // red to yellow
                tileMode: TileMode.repeated,
                // repeats the gradient over the canvas
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Color.fromRGBO(9, 18, 28, 0.9),
                  Color.fromRGBO(9, 18, 28, 0.8),
                  Color.fromRGBO(9, 18, 28, 0.9)
                ], // red to yellow
                tileMode:
                    TileMode.repeated, // repeats the gradient over the canvas
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(24),
              ),
            ),
            width: 320.0,
            height: 650.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginComponents(),
                SizedBox(
                  height: 15,
                ),
                LoginComponents(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
