import 'package:church/breakpoints/breakpoints.dart';
import 'package:church/screens/more/widgets/menu_mobile.dart';
import 'package:church/screens/more/widgets/menu_tablet.dart';
import 'package:church/screens/more/widgets/menu_web.dart';
import 'package:flutter/material.dart';

class MyMenu extends StatefulWidget {
  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= tabletBreakPoint) {
          return MenuWeb();
        }

        if (maxWidth >= mobileBreakPoint) {
          return MenuTablet();
        }
        return MenuMobile();
      },
    );
  }
}
