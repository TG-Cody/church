import 'package:church/css/css.dart';
import 'package:flutter/material.dart';

class SenhaESignup extends StatelessWidget {
  final String title;

  const SenhaESignup({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: senhaESignup,
      ),
    );
  }
}
