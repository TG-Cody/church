import 'package:church/css/css.dart';
import 'package:church/css/logo_app_bar.dart';
import 'package:church/screens/home/home_components/header/carousel.dart';
import 'package:church/screens/home/home_components/header/header_container.dart';
import 'package:church/screens/home/home_components/home_body/campanhas.dart';
import 'package:church/screens/home/home_components/home_body/titulos.dart';
import 'package:flutter/material.dart';

class TopMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          title: Text(
            'IGREJA \nQUADRANGULAR',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: LogoAppBar(),
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
                containerChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 4,
                      child: CarouselVideo(),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: IconButton(
                          icon: Icon(
                            Icons.add_to_queue_rounded,
                            color: colorIconsMenu,
                            size: 35,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: TitulosBody(
                  title: 'CAMPANHAS',
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Campanhas(),
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
