import 'package:auto_size_text/auto_size_text.dart';
import 'package:church/css/css.dart';
import 'package:flutter/material.dart';

class AgendaComponents extends StatelessWidget {
  final String title;
  final String event;
  final String description;
  final IconData myIcon;
  final Color iconColor;

  const AgendaComponents({
    Key key,
    this.title,
    this.event,
    this.description,
    this.myIcon,
    this.iconColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .25,
      decoration: BoxDecoration(
        color: secondaryColor,
        border: Border.all(
          color: secondaryColor,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16, left: 32),
                child: AutoSizeText(
                  title,
                  minFontSize: 20,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 20, left: 16),
                child: Row(
                  children: [
                    Icon(
                      myIcon,
                      size: 30,
                      color: iconColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            event,
                            minFontSize: 16,
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          AutoSizeText(
                            description,
                            minFontSize: 16,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
