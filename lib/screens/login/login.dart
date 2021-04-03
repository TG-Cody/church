// ignore: unused_import
import 'package:church/breakpoints/breakpoints.dart';

import 'package:church/screens/login/widgets/mobile_login.dart';
import 'package:church/screens/login/widgets/tablet_login.dart';
import 'package:church/screens/login/widgets/web_login.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth >= tabletBreakPoint) {
          return WebLogin();
        }
        if (maxWidth >= mobileBreakPoint) {
          return TabletLogin();
        }
        return MobileLogin();
      },
    );
  }
}
