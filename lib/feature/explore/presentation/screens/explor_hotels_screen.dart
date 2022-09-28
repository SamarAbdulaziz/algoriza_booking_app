import 'package:algoriza_booking_app/feature/explore/presentation/screens/explor_hotels_widget.dart';
import 'package:flutter/material.dart';

class ExploreHotelScreen extends StatelessWidget {
  const ExploreHotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text(
          'Explore',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: const [
          Icon(
            Icons.favorite_border_rounded,
            color: Colors.white,
          ),
          SizedBox(width: 18,),
          Icon(
            Icons.maps_home_work,
            color: Colors.white,
          ),
          SizedBox(width: 18,)
        ],
      ),
      body: const ExploreHotelWidget(),
    );
  }
}
