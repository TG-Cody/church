import 'package:church/screens/home/home.dart';
import 'package:church/screens/home/home_components/home_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

import 'package:flutter/cupertino.dart';

class VideoContainer extends StatelessWidget {
  final Widget videoChild;

  const VideoContainer({Key key, this.videoChild}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
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
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return HomeComponents(
            videoLink: videosFaceStream.getVideo(),
          );
        },
        //indicatorLayout: PageIndicatorLayout.COLOR,
        autoplay: true,
        itemCount: 3,
        pagination: new SwiperPagination(),
        //control: new SwiperControl(),
      ),
    );
  }
}
