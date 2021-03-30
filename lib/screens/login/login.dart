// ignore: unused_import
import 'package:church/css/css.dart';
import 'package:church/css/logo.dart';
import 'package:church/screens/login/login_components/bg_comp.dart';
import 'package:church/screens/login/login_components/container_comp.dart';
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
          BgComp(),
          ContainerComp(
            loginContainer: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Logo(),
                LoginComponents(),
                SizedBox(
                  height: 20,
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
