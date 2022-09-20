
import 'package:algoriza_booking_app/feature/auth/presentaion/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BookingApp extends StatelessWidget {
  const BookingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          //primarySwatch: Color(0xff779AB6),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.black,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
              ),
              elevation: 0.0
          )
      ),
      home: OnboardingScreens(),
      debugShowCheckedModeBanner: false,

    );
  }
}
