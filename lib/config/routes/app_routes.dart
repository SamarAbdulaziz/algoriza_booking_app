import 'package:algoriza_booking_app/core/utiles/app_strings.dart';
import 'package:algoriza_booking_app/feature/auth/presentaion/screens/get_started_screen.dart';
import 'package:algoriza_booking_app/feature/auth/presentaion/screens/login_screen.dart';
import 'package:algoriza_booking_app/feature/auth/presentaion/screens/onboarding_screen.dart';
import 'package:algoriza_booking_app/feature/auth/presentaion/screens/profile_screen.dart';
import 'package:algoriza_booking_app/feature/auth/presentaion/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/services/service_locator.dart';
import '../../feature/auth/presentaion/controllers/auth_cubit.dart';

class Routes {
  static const String initialRoute = '/';
  static const String onBoardingRoute = '/onBoardingScreen';
  static const String loginScreenRoute = '/loginScreen';
  static const String registerScreenRoute = '/registerScreen';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {

      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<AuthenticationCubit>(
            create: (context) => sl<AuthenticationCubit>(),
            child: const ProfileScreen(),
          ),
        );


      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<AuthenticationCubit>(
            create: (context) => sl<AuthenticationCubit>(),
            child:  OnBoardingScreen(),
          ),
        );

      case Routes.loginScreenRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<AuthenticationCubit>(
            create: (context) => sl<AuthenticationCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.registerScreenRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<AuthenticationCubit>(
            create: (context) => sl<AuthenticationCubit>(),
            child: const RegisterScreen(),
          ),
        );
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic>? undefinedRoute() {
    return MaterialPageRoute(
        builder: (context) => const Scaffold(
              body: Center(
                child: Text(AppStrings.undefinedRoute),
              ),
            ));
  }
}
