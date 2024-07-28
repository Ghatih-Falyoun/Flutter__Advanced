import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';
import 'package:flutter_complete_project/feuters/login/ui/home/ui/home_screen.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/logic/cubit/login_cubit.dart';
import 'package:flutter_complete_project/feuters/login/ui/onboarding/onboarding_screen.dart';
import 'package:flutter_complete_project/feuters/login/ui/login/login_screen.dart';
import 'package:flutter_complete_project/feuters/login/ui/sing_up/sing_up_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getit<LoginCubit>(),
            child: loginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (context) => singUpScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );  
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
