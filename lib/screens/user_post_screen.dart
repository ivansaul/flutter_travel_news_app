import 'package:flutter/material.dart';
import 'package:flutter_travel_news_app/config/app_theme.dart';
import 'package:flutter_travel_news_app/config/custom_icons.dart';
import 'package:flutter_travel_news_app/widgets/widgets.dart';
import 'package:go_router/go_router.dart';

import '../config/app_data.dart';

class UserPostScreen extends StatelessWidget {
  static const String name = 'user_post_screen';
  const UserPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> listImages = AppData.listNetworkImages;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyTheme.scafoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarWidget(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 45),
                child: Text(
                  'Every piece of chocolate I ever ate is getting back al me... desserts are very revengeful...',
                  style: MyTheme.subtitleMedium,
                ),
              ),
              const SizedBox(height: 20),
              const FollowersWidget(),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text("Ivan's Post", style: MyTheme.titleLarge),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child:
                        Text('View All', style: MyTheme.textButtonStyleSmall),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // USER POSTS
              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return HorizontalPostCardWidget(
                      imageUrl: listImages[index],
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text("Popular From Ivan", style: MyTheme.titleLarge),
              const SizedBox(height: 20),

              // POPULARS LISTVIEW
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SizedBox(
                        width: size.width * 0.7,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            listImages[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        tooltip: 'Increment',
        child: const Icon(
          CustomIcons.arrow_back_icon,
          color: MyTheme.buttonBackground,
        ),
      ),
    );
  }
}

class FollowersWidget extends StatelessWidget {
  const FollowersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 27),
      height: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xff19202D),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('54.21K', style: MyTheme.titleFollowers),
              Text('Followers', style: MyTheme.subtitleFollowers),
            ],
          ),
          const FollowerDivider(),
          Column(
            children: [
              Text('2.11K', style: MyTheme.titleFollowers),
              Text('Posts', style: MyTheme.subtitleFollowers),
            ],
          ),
          const FollowerDivider(),
          Column(
            children: [
              Text('36.40K', style: MyTheme.titleFollowers),
              Text('Following', style: MyTheme.subtitleFollowers),
            ],
          ),
        ],
      ),
    );
  }
}

class FollowerDivider extends StatelessWidget {
  const FollowerDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 38,
      width: 1,
      color: const Color(0xffC1D4F9),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 70,
          width: 70,
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
              'Ivan Saul',
              style: MyTheme.titleLarge,
            ),
            Text(
              'Author & Writer',
              style: MyTheme.titleSmall,
            )
          ],
        ),
        const Spacer(),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Material(
            color: MyTheme.buttonBackground,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                child: Text(
                  'Following',
                  style: MyTheme.filledtButtonTextSmall,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
