import 'package:church/css/css.dart';
import 'package:church/css/logo.dart';
import 'package:church/screens/home/home_components/header_container.dart';
import 'package:church/screens/home/home_components/home_components.dart';
import 'package:church/screens/home/home_components/video_container.dart';
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
      appBar: AppBar(
        title: Text('IGREJA QUADRANGULAR'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.add_to_queue_rounded,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            children: [
              HeaderContainer(
                containerChild: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Logo(),
                    SizedBox(
                      height: 30,
                    ),
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
