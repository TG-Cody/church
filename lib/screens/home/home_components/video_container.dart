import 'package:flutter/material.dart';

class VideoContainer extends StatelessWidget {
  final Widget videoChild;

  const VideoContainer({Key key, this.videoChild}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 32, horizontal: 32),
      height: 220,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        border: Border.all(color: Colors.white),
        color: Colors.white,
      ),
      child: videoChild,
    );
  }
}
