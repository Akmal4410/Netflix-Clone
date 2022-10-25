import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors.dart';
import 'package:netflix_project/core/constants.dart';
import 'package:netflix_project/presentation/new_and_hot/widgets/video_widget.dart';
import 'package:netflix_project/presentation/widget/custom_button.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 70,
          child: Column(
            children: [
              Text(
                'FEB',
                style: kTextStyle.copyWith(color: kGrey),
              ),
              const Text(
                '11',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            //height: 470,
            // color: Colors.redAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoWidget(),
                Row(
                  children: const [
                    Text(
                      'TALL GIRL 2',
                      style: TextStyle(
                        letterSpacing: -5,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    CustomButton(
                      title: 'Remind Me',
                      icon: Icons.notifications,
                      titleSize: 14,
                      iconSize: 20,
                    ),
                    CustomButton(
                      title: 'Info',
                      icon: Icons.info,
                      titleSize: 14,
                      iconSize: 20,
                    ),
                    kWidth,
                  ],
                ),
                Text('Coming on Friday'),
                kHeight,
                Text('Tall Girl', style: kTextStyle),
                kHeight,
                Text(
                  '''ley of type and scrambled it to make a type specimen book. Itronic typesetting, remaining essentially unchanged. sheets c Aldus PageMaker including versions of Lorem Ipsum''',
                  style: TextStyle(color: kGrey),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
