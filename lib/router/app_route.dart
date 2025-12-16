import 'dart:async';

import 'package:com.example.epbomi/feature/authen/page/signin.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/home_screen.dart';
import 'package:com.example.epbomi/feature/home/presentation/page/onboarding.dart';
import 'package:com.example.epbomi/router/bloc/app_bloc.dart';
import 'package:com.example.epbomi/router/page_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class AppRoute extends GoRouter {
  AppRoute({required this.appRouteBloc, required this.sharedPreferences})
    : super.routingConfig(
        onException: (context, state, router) {},
        initialLocation: PageRoutes.spashScreen,
        refreshListenable: GoRouterRefreshStream(appRouteBloc.stream),
        routingConfig: ValueNotifier<RoutingConfig>(
          RoutingConfig(
            redirect: (context, state) async {
              final response =  sharedPreferences.getString('user_section');

              if (response != null && response.isNotEmpty) {
                return PageRoutes.homeView;
              } else {
                return PageRoutes.signin;
              }
            },

            routes: [
              GoRoute(
                path: PageRoutes.onbard,
                pageBuilder: (context, state) => defaultTransitionPage(
                  key: state.pageKey,
                  child: OnboardingScreen(),
                ),
              ),
              GoRoute(
                path: PageRoutes.signin,
                pageBuilder: (context, state) =>
                    defaultTransitionPage(key: state.pageKey, child: SignIn()),
              ),

              GoRoute(
                path: PageRoutes.homeView,
                pageBuilder: (context, state) => defaultTransitionPage(
                  key: state.pageKey,
                  child: HomeOverView(),
                ),
              ),
            ],
          ),
        ),
      );

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }

  final AppRouteBloc appRouteBloc;
  final SharedPreferences sharedPreferences;
  late StreamSubscription<Uri> _sub;
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    // _subscription = stream.asBroadcastStream().listen((_) => notifyListeners());
    _subscription = stream.asBroadcastStream().listen((event) {
      debugPrint('[GoRouterRefreshStream] Event: $event');
      notifyListeners();
    });
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

CustomTransitionPage<T> defaultTransitionPage<T>({
  required Widget child,
  LocalKey? key,
}) {
  return CustomTransitionPage<T>(
    key: key,
    transitionDuration: const Duration(milliseconds: 350),
    reverseTransitionDuration: const Duration(milliseconds: 250),
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
