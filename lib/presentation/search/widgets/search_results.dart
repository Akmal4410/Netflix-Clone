// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_project/core/constants.dart';
import 'package:netflix_project/presentation/search/widgets/search_text_title.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: 'Movies & Tv'),
        kHeight,
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1 / 1.5,
            children: List.generate(
              20,
              (index) {
                return MainCard();
              },
            ),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  MainCard({super.key});

  String imageurl =
      'https://www.themoviedb.org/t/p/w440_and_h660_face/f2PVrphK0u81ES256lw3oAZuF3x.jpg';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageurl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
