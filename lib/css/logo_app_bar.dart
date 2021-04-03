import 'package:flutter/material.dart';

class LogoAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Image.asset(
        "images/logo.png",
        fit: BoxFit.cover,
        alignment: Alignment.center,
      ),
    );
  }
}
