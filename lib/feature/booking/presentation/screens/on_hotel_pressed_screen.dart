import 'package:algoriza_booking_app/feature/booking/presentation/screens/on_hotel_pressed_widget.dart';
import 'package:algoriza_booking_app/feature/explore/domain/entities/hotel.dart';
import 'package:flutter/material.dart';

class OnHotelPressedScreen extends StatelessWidget {
   OnHotelPressedScreen({Key? key,  this.hotel}) : super(key: key);
  final hotel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        centerTitle: true,
        title:  (hotel== null)? Text('Hotels') :Text(
          '${hotel.name}',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: const [
          Icon(
            Icons.favorite_border_rounded,
            color: Colors.white,
          ),
          SizedBox(width: 18,)
        ],
      ),
      body: const OnHotelPressedWidget(),
    );
  }
}
