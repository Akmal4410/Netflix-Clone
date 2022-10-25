// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_project/core/colors.dart';
import 'package:netflix_project/core/constants.dart';
import 'package:netflix_project/presentation/home/widgets/background_image.dart';
import 'package:netflix_project/presentation/home/widgets/top_title_card.dart';
import 'package:netflix_project/presentation/widget/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (BuildContext context, bool value, Widget? _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: const [
                      BackgroundImageWidget(),
                      MainTitleCard(title: 'Released in the Past Year'),
                      MainTitleCard(title: 'Trending Now'),
                      TopTitleCard(title: 'Top 10 Tv Shows in India Today'),
                      MainTitleCard(title: 'Tense Dramas'),
                      MainTitleCard(title: 'South indian Cinemas'),
                    ],
                  ),
                  value
                      ? AnimatedContainer(
                          duration: Duration(microseconds: 2000),
                          width: double.infinity,
                          height: 80,
                          color: Colors.black.withOpacity(0.1),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Image.asset(
                                      'assets/images/Logo.png',
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.cast,
                                          size: 30,
                                          color: kWhite,
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        width: 30,
                                        height: 30,
                                        color: Colors.blue,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('TV Shows', style: kTextStyle),
                                  Text(
                                    'Movies',
                                    style: kTextStyle,
                                  ),
                                  Text(
                                    'Catergories',
                                    style: kTextStyle,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      : kHeight
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
