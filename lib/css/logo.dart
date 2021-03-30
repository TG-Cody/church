import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 0, 8),
      child: Image.asset(
        "images/logo.png",
        alignment: Alignment.topLeft,
      ),
    );
  }
}
