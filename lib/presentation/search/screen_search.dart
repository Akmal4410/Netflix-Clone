// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors.dart';
import 'package:netflix_project/core/constants.dart';
import 'package:netflix_project/presentation/search/widgets/search_idle.dart';
import 'package:netflix_project/presentation/search/widgets/search_results.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: kGrey.withOpacity(0.4),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: kGrey,
                ),
                suffixIcon: Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: kGrey,
                ),
                style: TextStyle(color: kWhite),
              ),
              kHeight,
              // Expanded(
              //   child: SearchIdle(),
              // ),
              Expanded(
                child: SearchResults(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
