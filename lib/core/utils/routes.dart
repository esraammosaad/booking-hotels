import 'package:booking_hotels/features/authentication/presentation/views/signin_view.dart';
import 'package:booking_hotels/features/splash/presentation/views/splash_view.dart';
import 'package:booking_hotels/features/splash/presentation/views/widgets/custom_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static String kPageView = '/customPageView';
  static String kSignInView = '/signInView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kPageView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionDuration: const Duration(seconds: 4),
              key: state.pageKey,
              child: const CustomPageView(),
              transitionsBuilder: (context, animation, animationTwo, child) {
                return FadeTransition(
                  opacity:
                      CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                  child: child,
                );
              });
        },

      ),
      GoRoute(
        path: kSignInView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
              transitionDuration: const Duration(seconds: 1),
              key: state.pageKey,
              child: const SignInView(),
              transitionsBuilder: (context, animation, animationTwo, child) {
                return FadeTransition(
                  opacity:
                      CurveTween(curve: Curves.bounceInOut).animate(animation),
                  child: child,
                );
              });
        },
      ),
    ],
  );
}
