import 'package:algoriza_booking_app/feature/booking/presentation/components/hotel_pressed.dart';
import 'package:flutter/material.dart';

class OnHotelPressedWidget extends StatelessWidget {
  const OnHotelPressedWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) =>  HotelPressed(),
          itemCount: 6,
        ));
  }
}
