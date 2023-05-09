import 'package:flutter/material.dart';

import '../config/app_theme.dart';
class ChipContainer extends StatelessWidget {
  final String content;
  const ChipContainer({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 5, top: 2, bottom: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 0,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 3,
            bottom: 1,
          ),
          child: Text(
            content,
            style: MyTheme.subtitleLarge,
          ),
        ),
      ),
    );
  }
}
