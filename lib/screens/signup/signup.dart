import 'package:church/breakpoints/breakpoints.dart';
import 'package:church/screens/signup/widgets/bigger_tablet_signup.dart';
import 'package:church/screens/signup/widgets/mobile_signup.dart';
import 'package:church/screens/signup/widgets/tablet_signup.dart';
import 'package:church/screens/signup/widgets/web_signup.dart';
import 'package:flutter/material.dart';

class SingnupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth >= biggertabletBreakPoint) {
          return WebSignup();
        }
        if (maxWidth >= tabletBreakPoint) {
          return BiggerTabletSignup();
        }

        if (maxWidth >= mobileBreakPoint) {
          return TabletSignup();
        }
        return MobileSignup();
      },
    );
  }
}
