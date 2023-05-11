import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_news_app/config/app_data.dart';
import 'package:flutter_travel_news_app/config/app_theme.dart';
import 'package:flutter_travel_news_app/config/custom_icons.dart';
import 'package:flutter_travel_news_app/widgets/bottom_navbar.dart';
import 'package:go_router/go_router.dart';

class DetailScreen extends StatelessWidget {
  static const String name = 'detail_screen';

  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const List<String> listImages = AppData.listNetworkImages;
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: MyTheme.buttonBackground,
              automaticallyImplyLeading: false,
              // toolbarHeight: 70,
              pinned: true,
              // floating: true,
              title: Row(
                children: const [
                  SizedBox(width: 10),
                  CustomButton(iconData: CustomIcons.arrow_back_icon),
                  Spacer(),
                  CustomButton(iconData: CustomIcons.bookmark_white_icon),
                  SizedBox(width: 10),
                ],
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Container(
                  height: 30,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
              ),
              expandedHeight: size.height * 0.4,
              flexibleSpace: FlexibleSpaceBar(
                background: Swiper(
                  autoplay: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      listImages[index],
                      fit: BoxFit.cover,
                    );
                  },
                  itemCount: listImages.length,
                  pagination: const SwiperPagination(
                      margin: EdgeInsets.only(bottom: 60)),

                  // viewportFraction: 0.8,
                  // scale: 0.9,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Unravel mysteries od the Maldives',
                        style: MyTheme.titleExtraLarge,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 10,
                      ),
                      height: 54,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/user2.png'),
                          ),
                          const SizedBox(width: 13),
                          Text(
                            'Keanu carpent May 18 * 8 min read',
                            style: MyTheme.subtitleMedium,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Nulla pariatur ea eu proident enim velit ullamco reprehenderit Lorem consectetur eu id irure. Nostrud quis eu nulla pariatur labore ea voluptate eu officia ut anim enim.Culpa consectetur minim do anim nisi deserunt. Incididunt sint sit consequat mollit.  Commodo velit consectetur aute. Incididunt sint sit consequat mollit.  Enim excepteur mollit veniam laboris culpa ad. Pariatur in labore dolor amet ut velit commodo dolor minim pariatur incididunt ullamco sunt dolor ipsum. Aliqua occaecat laboris sunt ullamco id labore ullamco commodo laboris cillum. Esse consectetur quis ex cupidatat anim veniam. Quis est Lorem aliqua tempor enim id eiusmod aliquip consequat. Eiusmod duis Lorem ipsum consectetur reprehenderit minim fugiat dolor id irure cillum cupidatat. Fugiat consectetur irure exercitation eu ullamco fugiat ipsum laborum quis reprehenderit veniam consectetur et. Exercitation aliqua sit sint qui non minim eu aliquip. Excepteur deserunt ut cillum consectetur culpa irure aute et. Exercitation consectetur officia nisi do commodo nulla anim ea quis dolor velit cillum cupidatat non. Et in enim fugiat consequat reprehenderit voluptate incididunt non elit id. Duis laboris quis incididunt consectetur adipisicing ad. Dolore veniam duis quis sint id enim. Aliqua esse sit excepteur adipisicing esse. Commodo enim et culpa exercitation est nostrud Lorem qui eu cupidatat ipsum mollit deserunt adipisicing in. Aliquip amet eiusmod ut. Eiusmod mollit culpa enim occaecat fugiat nostrud qui ipsum reprehenderit. Fugiat minim anim fugiat irure reprehenderit minim ad. In sunt tempor elit laboris aute cillum magna tempor eu. Fugiat labore id ad aliqua amet do tempor commodo cillum laboris magna duis.",
                      style: MyTheme.contentMedium,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData iconData;
  const CustomButton({
    super.key,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}
