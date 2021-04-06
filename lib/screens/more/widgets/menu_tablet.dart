import 'package:church/css/css.dart';
import 'package:church/screens/more/menu_components/header_drawer.dart';
import 'package:church/screens/more/menu_components/my_drawer.dart';
import 'package:flutter/material.dart';

class MenuTablet extends StatefulWidget {
  @override
  _MenuTabletState createState() => _MenuTabletState();
}

class _MenuTabletState extends State<MenuTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
          alignment: Alignment.topRight,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * .4,
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
                  child: MyDrawer(),
                ),
              ],
            ),
          )),
    );
  }
}
