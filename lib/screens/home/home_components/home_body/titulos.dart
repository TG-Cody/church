import 'package:church/css/css.dart';
import 'package:flutter/material.dart';

class TitulosBody extends StatelessWidget {
  final title;

  const TitulosBody({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: Text(
        title,
        style: titulo,
      ),
    );
  }
}
