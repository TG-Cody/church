import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  final Widget containerChild;

  const HeaderContainer({Key key, this.containerChild}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .5,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight, // 10% of the width, so there are ten blinds.
          colors: <Color>[
            Color(0xff231626),
            // Color(0xff231727).withOpacity(.8),
            // Color(0xff231625),
            //Color(0xff181925),
            //Color(0xff151824),

            //Color(0xff09121C),
            Color(0xff09131E),
            //Color(0xff0009121C)
          ], // red to yellow
          //tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
        ),
      ),
      child: containerChild,
    );
  }
}
