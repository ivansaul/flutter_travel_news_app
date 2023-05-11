import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_travel_news_app/screens/screens.dart';
import 'package:go_router/go_router.dart';

import '../config/app_theme.dart';

class VerticalCardWidget extends StatelessWidget {
  final String imageUrl;
  const VerticalCardWidget({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 255,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          top: 10,
          right: 10,
          bottom: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageUrl,
                height: 164,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 18),
            GestureDetector(
              onTap: () {
                context.pushNamed(DetailScreen.name);
              },
              child: Text(
                'Fell the thrill on the only surf simulator in Maldives 2023',
                style: MyTheme.titleMedium,
                textAlign: TextAlign.start,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  width: 38,
                  height: 38,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://i.imgur.com/hQ5xaVn.jpg',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                GestureDetector(
                  onTap: () {
                    context.pushNamed(UserPostScreen.name);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sang Dong-Min', style: MyTheme.titleSmall),
                      Text('May 8, 2023', style: MyTheme.subtitleMedium),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: 37,
                  width: 37,
                  decoration: BoxDecoration(
                    color: const Color(0xffEFF5F4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/share_icon.svg'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
