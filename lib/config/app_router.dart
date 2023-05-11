import 'package:flutter_travel_news_app/screens/home_screen.dart';
import 'package:flutter_travel_news_app/screens/screens.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter appRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: HomeScreen.name,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/detail_screen',
        name: DetailScreen.name,
        builder: (context, state) => const DetailScreen(),
      ),
      GoRoute(
        path: '/user_post_screen',
        name: UserPostScreen.name,
        builder: (context, state) => const UserPostScreen(),
      ),
    ],
  );
}
