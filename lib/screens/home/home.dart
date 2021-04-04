import 'package:church/breakpoints/breakpoints.dart';
import 'package:church/screens/home/widgets/bigger_tablet.dart';
import 'package:church/screens/home/widgets/top_mobile.dart';
import 'package:church/screens/home/widgets/top_tablet.dart';
import 'package:church/screens/home/widgets/top_web.dart';
import 'package:flutter/material.dart';
import 'home_components/data/html_data.dart';

VideosFaceStream videosFaceStream = VideosFaceStream();

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth >= biggertabletBreakPoint) {
          return TopWeb();
        }
        if (maxWidth >= tabletBreakPoint) {
          return TopBiggerTablet();
        }

        if (maxWidth >= mobileBreakPoint) {
          return TopTablet();
        }
        return TopMobile();
      },
    );
  }
}
