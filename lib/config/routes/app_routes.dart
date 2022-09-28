import 'package:algoriza_booking_app/core/utiles/app_strings.dart';
import 'package:algoriza_booking_app/feature/Profile_info/presentaion/controllers/profile_cubit.dart';
import 'package:algoriza_booking_app/feature/Profile_info/presentaion/screens/Profile_screen.dart';
import 'package:algoriza_booking_app/feature/auth/presentation/controllers/auth_cubit.dart';
import 'package:algoriza_booking_app/feature/booking/presentation/controllers/booking_cubit.dart';
import 'package:algoriza_booking_app/feature/booking/presentation/screens/booking_screen.dart';
import 'package:algoriza_booking_app/feature/explore/presentation/controllers/hotels_cubit.dart';
import 'package:algoriza_booking_app/feature/explore/presentation/screens/explor_hotels_screen.dart';
import 'package:algoriza_booking_app/feature/explore/presentation/screens/explore_screen.dart';
import 'package:algoriza_booking_app/feature/explore/presentation/screens/hotel_details.dart';
import 'package:algoriza_booking_app/feature/search/presentation/controllers/search_cubit.dart';
import 'package:algoriza_booking_app/feature/search/presentation/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/services/service_locator.dart';
import '../../feature/Profile_info/presentaion/screens/edit_profile_screen.dart';
import '../../feature/auth/presentation/screens/login_screen.dart';
import '../../feature/auth/presentation/screens/onboarding_screen.dart';
import '../../feature/auth/presentation/screens/register_screen.dart';
import '../../feature/booking/presentation/screens/on_hotel_pressed_screen.dart';
import '../../feature/explore/presentation/screens/home_screen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String onBoardingRoute = '/onBoardingScreen';
  static const String loginScreenRoute = '/loginScreen';
  static const String registerScreenRoute = '/registerScreen';
  static const String profileScreenRoute = '/profileScreen';
  static const String profileEditScreenRoute = '/profileEditScreen';
  static const String exploreScreenRoute = '/exploreScreen';
  static const String bookingScreenRoute = '/bookingScreen';
  static const String searchScreenRoute = '/searchScreen';
  static const String homeScreenRoute = '/homeScreen';
  static const String onHotelPressedScreen = '/onHotelPressedScreen';
  static const String hotelDetails = '/hotelDetails';



}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {

      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<AuthenticationCubit>(
            create: (context) => sl<AuthenticationCubit>(),
            child:  ExploreHotelScreen(),
          ),
        );


      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<AuthenticationCubit>(
            create: (context) => sl<AuthenticationCubit>(),
            child:  ExploreHotelScreen(),
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
            child:  ProfileScreen(),
          ),
        );
      case Routes.profileEditScreenRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<ProfileCubit>(
            create: (context) => sl<ProfileCubit>(),
            child: const EditProfileScreen(),
          ),
        );
      case Routes.exploreScreenRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<HotelsCubit>(
            create: (context) => sl<HotelsCubit>(),
            child:  ExploreScreen(),
          ),
        );
      case Routes.homeScreenRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<HotelsCubit>(
            create: (context) => sl<HotelsCubit>(),
            child: const Home_Screen(),
          ),
        );
      case Routes.bookingScreenRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<BookingCubit>(
            create: (context) => sl<BookingCubit>(),
            child:  BookingScreen(),
          ),
        );

      case Routes.searchScreenRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<SearchCubit>(
            create: (context) => sl<SearchCubit>(),
            child: SearchScreen(),
          ),
        );
      case Routes.onHotelPressedScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<SearchCubit>(
            create: (context) => sl<SearchCubit>(),
            child: OnHotelPressedScreen(),
          ),
        );
      case Routes.hotelDetails:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<AuthenticationCubit>(
            create: (context) => sl<AuthenticationCubit>(),
            child:  HotelDetails(),
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
