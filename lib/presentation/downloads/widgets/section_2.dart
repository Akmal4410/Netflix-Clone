import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors.dart';
import 'package:netflix_project/presentation/downloads/widgets/download_image_widget.dart';

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageList = [
    'https://www.themoviedb.org/t/p/w440_and_h660_face/49WJfeN0moxb9IPfGn8AIqMGskD.jpg',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/djM2s4wSaATn4jVB33cV05PEbV7.jpg',
    'https://www.themoviedb.org/t/p/w440_and_h660_face/f2PVrphK0u81ES256lw3oAZuF3x.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'We\'ll download a personalzed selections of\nmovies and shows for you, so there\'s\nalways something to watch on your\ndevice.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17, color: kGrey),
          ),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          // color: kWhite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.4,
                backgroundColor: kGrey.withOpacity(0.4),
              ),
              DownloadImageWidget(
                angle: 20,
                margin: EdgeInsets.only(left: 170, bottom: 40),
                image: imageList[0],
                size: Size(size.width * 0.35, size.width * 0.55),
              ),
              DownloadImageWidget(
                angle: -20,
                margin: EdgeInsets.only(right: 170, bottom: 40),
                image: imageList[1],
                size: Size(size.width * 0.35, size.width * 0.55),
              ),
              DownloadImageWidget(
                angle: 0,
                margin: EdgeInsets.only(bottom: 0),
                image: imageList[2],
                size: Size(size.width * 0.41, size.width * 0.63),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
