// ignore: unused_import
import 'package:church/css/css.dart';
import 'package:church/css/logo.dart';
import 'package:church/screens/login/login_components/bg_comp.dart';
import 'package:church/screens/login/login_components/button_comp.dart';
import 'package:church/screens/login/login_components/container_comp.dart';
import 'package:church/screens/login/login_components/login_components.dart';
import 'package:church/screens/navigation/navigation_screen.dart';
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
          BgComp(),
          ContainerComp(
            loginContainer: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text(
                    "Igreja Do Evangelho Quandrangular",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: [
                    Logo(),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: Text(
                            "Ministério",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ),
                        Text(
                          "Pr Francisco & Pra Wilma",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                LoginComponents(),
                SizedBox(
                  height: 20,
                ),
                LoginComponents(),
                SizedBox(
                  height: 30,
                ),
                ButtonComp(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NavigationScreen()));
                  },
                  color: Color(0xff3369FF),
                  title: "Login",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
