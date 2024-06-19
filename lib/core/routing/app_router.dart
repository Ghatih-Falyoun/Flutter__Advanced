import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';
import 'package:flutter_complete_project/feuters/login/ui/onboarding/onboarding_screen.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/login_screen.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/sing_up_screen.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch (settings.name) {
      case Routes.onBoardingScreen:
          return MaterialPageRoute(
            builder: (context) => OnboardingScreen(),
            );
      case Routes.loginScreen:
          return MaterialPageRoute(
            builder: (context) => loginScreen(),
            );
      case Routes.signUpScreen:
          return MaterialPageRoute(
            builder: (context) => singUpScreen(),
            );      
      default:
          return MaterialPageRoute(
            builder: (context) => Scaffold(
              body: Center(child: Text('No route defined for ${settings.name}'),),
            ),
            );
    }
  }
}