import 'package:booking_hotels/features/splash/presentation/views/splash_view.dart';
import 'package:booking_hotels/features/splash/presentation/views/widgets/custom_page_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes{
  static String kPageView='/customPageView';


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),

      GoRoute(
        path: kPageView,
        builder: (context, state) => const CustomPageView(),
      ),
    ],
  );
}