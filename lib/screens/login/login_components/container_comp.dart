import 'package:flutter/material.dart';

class ContainerComp extends StatelessWidget {
  final Widget loginContainer;

  const ContainerComp({Key key, this.loginContainer}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end:
              Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
          colors: <Color>[
            Color(0xff0009121C).withOpacity(1),
            Color(0xff09121C).withOpacity(1),
            Color(0xff0009121C).withOpacity(0.9)
          ], // red to yellow
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(24),
        ),
      ),
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .97,
      child: loginContainer,
    );
  }
}
