import 'package:algoriza_booking_app/feature/booking/presentation/screens/booking_widget.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  static const String routeName='Booking Screen ';
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body:  BookingWidget(),
      ),
    );
  }
}