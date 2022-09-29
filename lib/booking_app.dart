import 'package:algoriza_booking_app/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BookingApp extends StatelessWidget {
  const BookingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
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
      debugShowCheckedModeBanner: false,

     // initialRoute: Routes.initialRoute,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}