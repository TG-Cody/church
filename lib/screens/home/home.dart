import 'package:church/css/logo.dart';
import 'package:church/screens/home/home_components/header/carousel.dart';
import 'package:church/screens/home/home_components/header/header_container.dart';
import 'package:flutter/material.dart';
import 'home_components/data/html_data.dart';

VideosFaceStream videosFaceStream = VideosFaceStream();

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          title: Text('IGREJA QUADRANGULAR'),
          centerTitle: true,
          leading: Logo(),
          actions: [
            IconButton(
              icon: Icon(
                Icons.add_to_queue_rounded,
              ),
              onPressed: () {},
            )
          ],
        ),
        preferredSize: Size.fromHeight(80.0),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              HeaderContainer(
                containerChild: CarouselVideo(),
                /* ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Logo(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            VideoContainer(
                              videoChild: HomeComponents(
                                videoLink: videosFaceStream.getVideo(),
                              ),
                            ),
                            VideoContainer(
                              videoChild: HomeComponents(
                                videoLink: videosFaceStream.getVideo(),
                              ),
                            ),
                            VideoContainer(
                              videoChild: HomeComponents(
                                videoLink: videosFaceStream.getVideo(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ), */
              ),
              /* HomeComponents(
                videoLink: videosFaceStream.getVideo(),
              ),
              HomeComponents(
                videoLink: videosFaceStream.getVideo(),
              ),
              HomeComponents(
                videoLink: videosFaceStream.getVideo(),
              ), */
            ],
          )
        ],
      ),
    );
  }
}
