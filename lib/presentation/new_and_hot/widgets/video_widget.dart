import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://www.themoviedb.org/t/p/w500_and_h282_face/piEEg5kDQyxK05V4Am8sVxFe267.jpg',
          fit: BoxFit.cover,
          height: 170,
          width: double.infinity,
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: kBlack.withOpacity(0.8),
            radius: 22,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.volume_off,
                color: kWhite,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
