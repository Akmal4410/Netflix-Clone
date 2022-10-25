import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhite,
          size: 25,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
