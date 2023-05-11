import 'package:flutter/material.dart';
import 'package:flutter_travel_news_app/config/app_theme.dart';
import 'package:flutter_travel_news_app/config/custom_icons.dart';

class HorizontalPostCardWidget extends StatelessWidget {
  final String imageUrl;
  const HorizontalPostCardWidget({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: SizedBox(
        width: size.width * 0.7,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    imageUrl,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(
                      CustomIcons.calendar_icon,
                      color: MyTheme.cursorColor,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "16th May",
                      style: MyTheme.subtitleMedium,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'News: Politics',
                    style: MyTheme.subtitleMedium,
                  ),
                  const Spacer(),
                  Text(
                    "The most iconic Eurovision performances from night one",
                    style: MyTheme.titleMedium,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Icon(
                        CustomIcons.time_icon,
                        color: MyTheme.cursorColor,
                        size: 20,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "09:32 pm",
                        style: MyTheme.subtitleMedium,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
