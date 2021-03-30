import 'package:church/css/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class HomeComponents extends StatelessWidget {
  final String videoLink;

  const HomeComponents({Key key, this.videoLink}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return HtmlWidget(
      videoLink,
      webView: true,
    );
  }
}
