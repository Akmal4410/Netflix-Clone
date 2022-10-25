import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors.dart';
import 'package:netflix_project/core/constants.dart';
import 'package:netflix_project/presentation/new_and_hot/widgets/video_widget.dart';
import 'package:netflix_project/presentation/widget/custom_button.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        Text(
          'Friends',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        Text(
          '''ley of type and scrambled it to make a type specimen book. Itronic typesetting, remaining essentially unchanged. sheets c Aldus PageMaker including versions of Lorem Ipsum''',
          style: TextStyle(color: kGrey),
        ),
        SizedBox(height: 40),
        VideoWidget(),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButton(
              title: 'Share',
              icon: Icons.share,
              titleSize: 16,
              iconSize: 25,
            ),
            kWidth,
            CustomButton(
              title: 'My List',
              icon: Icons.add,
              titleSize: 16,
              iconSize: 25,
            ),
            kWidth,
            CustomButton(
              title: 'Play',
              icon: Icons.play_arrow,
              titleSize: 16,
              iconSize: 25,
            ),
            kWidth,
          ],
        ),
      ],
    );
  }
}
