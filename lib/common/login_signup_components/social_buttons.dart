import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String title;
  final Color colors;
  final VoidCallback onTap;

  const SocialButton({
    Key key,
    this.title,
    this.colors,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          radius: 30,
          backgroundColor: colors,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
