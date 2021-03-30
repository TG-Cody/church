import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

class VideoCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(
          'images/man.png',
          fit: BoxFit.fill,
        );
      },
      indicatorLayout: PageIndicatorLayout.COLOR,
      autoplay: true,
      itemCount: 3,
      pagination: new SwiperPagination(),
      control: new SwiperControl(),
    );
  }
}
