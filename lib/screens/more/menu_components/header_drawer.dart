import 'package:auto_size_text/auto_size_text.dart';
import 'package:church/css/css.dart';
import 'package:flutter/material.dart';

class HeaderMenu extends StatelessWidget {
  final AssetImage picture;
  final String name;

  const HeaderMenu({
    Key key,
    this.picture,
    this.name,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: secondaryColor,
              backgroundImage: picture,
            ),
            SizedBox(
              width: 10,
            ),
            AutoSizeText(
              name,
              minFontSize: 20,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
