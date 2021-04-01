import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Campanhas extends StatelessWidget {
  List<String> mypics = [
    'images/man.png',
    'images/ironMan.png',
    'images/wp5173506.jpg',
  ];

  var pictures = [
    'images/T8mIrYO.png',
    'images/man.png',
    'images/wp5173506.jpg',
  ];

  int pics = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      height: MediaQuery.of(context).size.height * .3,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            pictures[pics],
            fit: BoxFit.fill,
          );
        },
        itemCount: 3,
        itemWidth: 250.0,
        itemHeight: 200.0,
        layout: SwiperLayout.STACK,
        //pagination: SwiperPagination(),
        control: SwiperControl(),
      ),
    );
  }
}
