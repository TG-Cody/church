import 'package:church/css/css.dart';
import 'package:flutter/material.dart';

class MenuComponentsMobile extends StatelessWidget {
  final IconData iconMenu;
  final String titleMenu;
  final VoidCallback tapMenu;

  const MenuComponentsMobile({
    Key key,
    this.iconMenu,
    this.titleMenu,
    this.tapMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapMenu,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          top: 12,
        ),
        child: Row(
          children: [
            Icon(
              iconMenu,
              color: colorIconsMenu,
              size: 30,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              titleMenu,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
