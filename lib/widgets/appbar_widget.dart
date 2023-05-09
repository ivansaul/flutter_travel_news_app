import 'package:flutter/material.dart';

import '../config/app_theme.dart';
class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 51,
          width: 51,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: SizedBox(
            child: Image.asset('assets/images/user1.png'),
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back!',
              style: MyTheme.titleMedium,
            ),
            Text(
              'Monday, 3 October',
              style: MyTheme.subtitleMedium,
            )
          ],
        ),
      ],
    );
  }
}
