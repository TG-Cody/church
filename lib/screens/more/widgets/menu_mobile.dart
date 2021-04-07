import 'package:church/css/css.dart';
import 'package:church/screens/more/menu_components/header_drawer.dart';
import 'package:church/screens/more/menu_components/my_drawer.dart';
import 'package:church/screens/more/menu_components/my_drawer_mobile.dart';
import 'package:flutter/material.dart';

class MenuMobile extends StatefulWidget {
  @override
  _MenuMobileState createState() => _MenuMobileState();
}

class _MenuMobileState extends State<MenuMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
          alignment: Alignment.topRight,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * .8,
            color: secondaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: HeaderMenu(
                    picture: AssetImage(
                      'images/man.png',
                    ),
                    name: 'Pastor \nFrancisco',
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      MyDrawerMobile(),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
