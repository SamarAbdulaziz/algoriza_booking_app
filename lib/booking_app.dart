import 'package:algoriza_booking_app/config/routes/app_routes.dart';
import 'package:algoriza_booking_app/core/services/service_locator.dart';
import 'package:algoriza_booking_app/feature/auth/presentation/controllers/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';


class BookingApp extends StatelessWidget {
  const BookingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationCubit>(
      create: (context) => sl<AuthenticationCubit>(),
      child: MaterialApp(
        initialRoute: Routes.initialRoute,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          //primarySwatch: Color(0xff779AB6),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
            ),
            elevation: 0.0,
          ),
        ),
        // home: OnBoardingScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}