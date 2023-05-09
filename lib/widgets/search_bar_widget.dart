import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../config/app_theme.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 0,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: TextField(
                style: MyTheme.subtitleMedium,
                cursorColor: MyTheme.cursorColor,
                decoration: InputDecoration(
                    hintText: 'Search for article...',
                    hintStyle: MyTheme.subtitleMedium,
                    border: InputBorder.none),
              ),
            ),
          ),
          Container(
            height: 49,
            width: 47,
            decoration: BoxDecoration(
                color: MyTheme.buttonBackground,
                borderRadius: BorderRadius.circular(15)),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/search_icon.svg',
                height: 20,
                width: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
