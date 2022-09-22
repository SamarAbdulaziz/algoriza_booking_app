import 'package:algoriza_booking_app/core/utiles/app_strings.dart';
import 'package:algoriza_booking_app/feature/Profile_info/presentaion/controllers/profile_cubit.dart';
import 'package:algoriza_booking_app/feature/Profile_info/presentaion/screens/Profile_screen.dart';
import 'package:algoriza_booking_app/feature/auth/presentation/controllers/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/services/service_locator.dart';
import '../../feature/auth/presentation/screens/get_started_screen.dart';
import '../../feature/auth/presentation/screens/login_screen.dart';
import '../../feature/auth/presentation/screens/onboarding_screen.dart';
import '../../feature/auth/presentation/screens/register_screen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String onBoardingRoute = '/onBoardingScreen';
  static const String loginScreenRoute = '/loginScreen';
  static const String registerScreenRoute = '/registerScreen';
  static const String profileScreenRoute = '/profileScreen';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {

      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<AuthenticationCubit>(
            create: (context) => sl<AuthenticationCubit>(),
            child: const GetStartedScreen(),
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

      case Routes.profileScreenRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<ProfileCubit>(
            create: (context) => sl<ProfileCubit>(),
            child: const ProfileScreen(),
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
      ),
    );
  }
}
