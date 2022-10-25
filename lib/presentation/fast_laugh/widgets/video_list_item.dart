// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors.dart';
import 'package:netflix_project/core/constants.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: kBlack.withOpacity(0.8),
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.volume_off,
                      color: kWhite,
                      size: 30,
                    ),
                  ),
                ),
                //Right Side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    CircleAvatar(
                      radius: 23,
                      backgroundImage: NetworkImage(
                          'https://www.themoviedb.org/t/p/w440_and_h660_face/djM2s4wSaATn4jVB33cV05PEbV7.jpg'),
                    ),
                    kHeight,
                    VideoActions(icon: Icons.emoji_emotions, title: 'LOL'),
                    VideoActions(icon: Icons.add, title: 'My List'),
                    VideoActions(icon: Icons.share, title: 'Share'),
                    VideoActions(icon: Icons.play_arrow, title: 'Play')
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  const VideoActions({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 7),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhite,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
