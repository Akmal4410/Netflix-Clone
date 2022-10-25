import 'package:flutter/material.dart';
import 'package:netflix_project/core/constants.dart';
import 'package:netflix_project/presentation/widget/main_card.dart';
import 'package:netflix_project/presentation/widget/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        kHeight,
        MainTitle(title: title),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => MainCard(
                imageUrl:
                    'https://www.themoviedb.org/t/p/w440_and_h660_face/49WJfeN0moxb9IPfGn8AIqMGskD.jpg',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
