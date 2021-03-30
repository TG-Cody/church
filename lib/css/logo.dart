import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 30, 0, 58),
      child: Image.asset(
        "images/logo.png",
        alignment: Alignment.topLeft,
      ),
    );
  }
}
