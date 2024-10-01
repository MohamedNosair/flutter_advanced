import 'package:flutter/material.dart';
import 'package:flutter_advance/core/routing/routes.dart';
import 'package:flutter_advance/feature/login_screen/home_screen.dart';
import 'package:flutter_advance/feature/onboarding_screen/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined${settings.name}'),
                  ),
                ));
    }
  }
}
