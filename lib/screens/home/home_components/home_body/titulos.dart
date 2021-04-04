import 'package:flutter/material.dart';

class TitulosBody extends StatelessWidget {
  final title;
  final TextStyle textStyle;

  const TitulosBody({Key key, this.title, this.textStyle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
