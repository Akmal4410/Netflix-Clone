import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_project/core/colors.dart';
import 'package:netflix_project/presentation/main/screen_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kWhite),
          bodyText2: TextStyle(color: kWhite),
          headline6: TextStyle(color: kWhite),
          caption: TextStyle(color: kWhite),
          subtitle1: TextStyle(color: kWhite),
        ),
      ),
      home: ScreenMain(),
    );
  }
}
