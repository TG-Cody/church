import 'package:church/css/css.dart';
import 'package:flutter/material.dart';

class SenhaESignup extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const SenhaESignup({Key key, this.title, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: senhaESignup,
        ),
      ),
    );
  }
}
