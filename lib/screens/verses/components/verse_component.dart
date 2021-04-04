import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class VerseComponent extends StatelessWidget {
  final String title;
  final Color colour;
  final VoidCallback onTap;

  const VerseComponent({Key key, this.title, this.colour, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 32,
          ),
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width * .7,
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: AutoSizeText(
                title,
                minFontSize: 16,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
