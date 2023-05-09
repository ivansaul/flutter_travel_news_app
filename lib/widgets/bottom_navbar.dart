import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 53),
      height: 82,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('assets/icons/home_selected_icon.svg'),
          SvgPicture.asset('assets/icons/bookmark_unselected_icon.svg'),
          SvgPicture.asset('assets/icons/notification_unselected_icon.svg'),
          SvgPicture.asset('assets/icons/profile_unselected_icon.svg'),
        ],
      ),
    );
  }
}
