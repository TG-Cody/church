import 'package:church/screens/home/home.dart';
import 'package:church/screens/home/home_components/header/home_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

class CarouselVideo extends StatefulWidget {
  @override
  _CarouselVideoState createState() => _CarouselVideoState();
}

class _CarouselVideoState extends State<CarouselVideo> {
  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

//bool _isPlaying = false;

  CarouselSliderController _sliderController;

  @override
  void initState() {
    super.initState();
    _sliderController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 290,
          margin: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: CarouselSlider.builder(
            unlimitedMode: true,
            controller: _sliderController,
            slideBuilder: (index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  //  border: Border.all(color: Colors.white),
                  color: colors[index].withOpacity(0.0),
                ),
                child: HomeComponents(
                  videoLink: videosFaceStream.getVideo(),
                ),
              );
            },
            slideTransform: CubeTransform(),
            slideIndicator: CircularSlideIndicator(
              padding: EdgeInsets.only(bottom: 32),
              indicatorBorderColor: Colors.black,
            ),
            itemCount: colors.length,
            initialPage: 0,
            // enableAutoSlider: true,
          ),
        ),
        /*  Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Align(
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 240, maxWidth: 600),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    iconSize: 48,
                    icon: Icon(Icons.skip_previous),
                    onPressed: () {
                      _sliderController.previousPage();
                    },
                  ),
                  IconButton(
                    iconSize: 64,
                    icon: Icon(
                      _isPlaying
                          ? Icons.pause_circle_outline
                          : Icons.play_circle_outline,
                    ),
                    onPressed: () {
                      setState(
                        () {
                          _isPlaying = !_isPlaying;
                          _sliderController.setAutoSliderEnabled(_isPlaying);
                        },
                      );
                    },
                  ),
                  IconButton(
                    iconSize: 48,
                    icon: Icon(Icons.skip_next),
                    onPressed: () {
                      _sliderController.nextPage();
                    },
                  ),
                ],
              ),
            ),
          ),
        ), */
      ],
    );
  }
}
