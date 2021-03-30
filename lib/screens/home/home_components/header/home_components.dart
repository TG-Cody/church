import 'package:church/css/css.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class HomeComponents extends StatelessWidget {
  final String videoLink;

  const HomeComponents({Key key, this.videoLink}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      ),
      child: HtmlWidget(
        videoLink,
        webView: true,
      ),
    );
  }
}
