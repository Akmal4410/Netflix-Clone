// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors.dart';
import 'package:netflix_project/core/constants.dart';
import 'package:netflix_project/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_project/presentation/new_and_hot/widgets/everyone_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kBackgroundColor,
          centerTitle: false,
          title: const Text(
            'New & Hot',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cast,
                size: 30,
                color: kWhite,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 10),
              width: 30,
              height: 30,
              color: Colors.blue,
            )
          ],
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: kWhite,
            labelColor: kBlack,
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            labelStyle: kTextStyle,
            indicator: BoxDecoration(
                color: kWhite, borderRadius: BorderRadius.circular(30)),
            tabs: const [
              Tab(
                text: '🍿 Coming Soon',
              ),
              Tab(
                text: '👀 Everyone\'s watching',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buidComingSoon(),
            _buildEveryoneWatching(),
          ],
        ),
      ),
    );
  }

  Widget _buidComingSoon() {
    return ListView.separated(
      padding: EdgeInsets.only(top: 10),
      itemCount: 10,
      separatorBuilder: (context, index) => kHeight,
      itemBuilder: (context, index) {
        return ComingSoonWidget();
      },
    );
  }

  Widget _buildEveryoneWatching() {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => EveryoneWatchingWidget(),
      separatorBuilder: (context, index) => kHeight,
      itemCount: 10,
    );
  }
}
