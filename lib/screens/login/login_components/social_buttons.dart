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
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.of(context).size.height * .09,
          width: MediaQuery.of(context).size.width * .16,
          decoration: BoxDecoration(
            color: colors,
            borderRadius: BorderRadius.circular(100),
          ),
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
