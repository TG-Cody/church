import 'package:flutter/material.dart';

class ButtonComp extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onTap;

  const ButtonComp({Key key, this.title, this.color, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 32),
        height: MediaQuery.of(context).size.height * .08,
        width: MediaQuery.of(context).size.width * .80,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
