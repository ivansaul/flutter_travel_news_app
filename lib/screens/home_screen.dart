import 'package:flutter/material.dart';
import 'package:flutter_travel_news_app/config/app_data.dart';
import 'package:flutter_travel_news_app/config/app_theme.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> listImages = AppData.listNetworkImages;
    const List<String> listChips = AppData.listChips;
    return Scaffold(
      backgroundColor: const Color(0xffFCFCFC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const AppBarWidget(),
              const SizedBox(height: 35),
              const SearchBar(),
              const SizedBox(height: 15),

              // CHIPS
              SizedBox(
                height: 30,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: listChips.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ChipContainer(content: '#${listChips[index]}');
                  },
                ),
              ),
              const SizedBox(height: 30),

              // VERTICAL CARD VIEW
              SizedBox(
                height: 304,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: VerticalCardWidget(
                        imageUrl: listImages[index],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text('Short For You', style: MyTheme.titleLarge),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child:
                        Text('View All', style: MyTheme.textButtonStyleSmall),
                  ),
                ],
              ),
              const SizedBox(height: 19),

              // HORIZONTAL CARD VIEW
              SizedBox(
                height: 88,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: listImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return HorizontalCardWidget(
                      imageUrl: listImages[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
