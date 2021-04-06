import 'package:church/breakpoints/breakpoints.dart';
import 'package:church/screens/agenda/widgets/agenda_bigger_table.dart';
import 'package:church/screens/agenda/widgets/agenda_mobile.dart';
import 'package:church/screens/agenda/widgets/agenda_tablet.dart';
import 'package:church/screens/agenda/widgets/agenda_web.dart';
import 'package:flutter/material.dart';

class AgendaScreen extends StatefulWidget {
  @override
  _AgendaScreenState createState() => _AgendaScreenState();
}

class _AgendaScreenState extends State<AgendaScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        if (maxWidth >= biggertabletBreakPoint) {
          return AgendaWeb();
        }
        if (maxWidth >= tabletBreakPoint) {
          return AgendaBiggerTablet();
        }

        if (maxWidth >= mobileBreakPoint) {
          return AgendaTablet();
        }
        return AgendaMobile();
      },
    );
  }
}
