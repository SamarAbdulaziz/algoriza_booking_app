import 'package:algoriza_booking_app/core/services/service_locator.dart';
import 'package:algoriza_booking_app/feature/explore/presentation/screens/explor_hotels_widget.dart';
import 'package:algoriza_booking_app/feature/explore/presentation/screens/map_screen.dart';
import 'package:algoriza_booking_app/feature/search/presentation/controllers/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExploreHotelScreen extends StatelessWidget {
  const ExploreHotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchCubit>(
      create: (context) => sl<SearchCubit>(),
      child: Scaffold(
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
          actions: [
            Icon(
              Icons.favorite_border_rounded,
              color: Colors.white,
            ),
            SizedBox(width: 18,),
            IconButton(
              icon: Icon(Icons.maps_home_work, color: Colors.white,),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapScreen()));
              },
            ),
            SizedBox(width: 18,)
          ],
        ),
        body: const ExploreHotelWidget(),
      ),
    );
  }
}
