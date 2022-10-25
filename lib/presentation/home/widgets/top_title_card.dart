import 'package:flutter/material.dart';
import 'package:netflix_project/core/constants.dart';
import 'package:netflix_project/presentation/home/widgets/number_card.dart';
import 'package:netflix_project/presentation/widget/main_title.dart';

class TopTitleCard extends StatelessWidget {
  const TopTitleCard({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
              (index) => NumberCard(
                index: index + 1,
                size: size,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
