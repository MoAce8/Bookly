import 'package:bookly/features/home/presentation/views/book_details_screen.dart';
import 'package:bookly/features/home/presentation/views/home_screen.dart';
import 'package:bookly/features/splash/presentation/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/bookDetails',
        builder: (context, state) => const BookDetailsScreen(),
      ),
    ],
  );
}
