import 'package:flutter/material.dart';

class BgComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        "images/fundo.jpg",
        fit: BoxFit.cover,
        height: 700,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end:
              Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
          colors: <Color>[
            Color.fromRGBO(255, 255, 255, 0),
            Color.fromRGBO(9, 19, 29, 1),
          ], // red to yellow
          tileMode: TileMode.repeated,
          // repeats the gradient over the canvas
        ),
      ),
    );
  }
}
