import 'package:flutter/material.dart';
import 'package:flutter_travel_news_app/config/app_theme.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const ChipContainer(content: '#Health');
                  },
                ),
              ),
              const SizedBox(height: 30),

              // VERTICAL CARD VIEW
              SizedBox(
                height: 304,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: VerticalCardWidget(),
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
                    child: Text('View All', style: MyTheme.textButtonSmall),
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
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return const HorizontalCardWidget();
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

