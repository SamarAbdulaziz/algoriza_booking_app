import 'package:algoriza_booking_app/feature/booking/presentation/components/favorite_widget.dart';
import 'package:algoriza_booking_app/feature/booking/presentation/components/finished_widget.dart';
import 'package:algoriza_booking_app/feature/booking/presentation/components/hotel_pressed.dart';
import 'package:algoriza_booking_app/feature/booking/presentation/components/upcoming_widget.dart';
import 'package:algoriza_booking_app/feature/explore/presentation/controllers/hotels_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/booking_cubit.dart';

class BookingWidget extends StatefulWidget {
  BookingWidget({Key? key})
      : super(
          key: key,
        );

  @override
  State<BookingWidget> createState() => _BookingWidgetState();
}

class _BookingWidgetState extends State<BookingWidget>
    with TickerProviderStateMixin {
  int selectedIndex = 0;
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HotelsCubit>(context).exploreHotels(count: 10, page: 1);
    tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelsCubit, HotelsStates>(
      builder: (context, state) {
        if (state is HotelsLoadedState) {
          var hotel = state.hotels.generalData;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Padding(
                padding: EdgeInsets.all( 16.0),
                child: const Text(
                  'My Trip',
                  style: TextStyle(
                      color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey.shade800),
                  child: TabBar(
                    controller: tabController,
                    onTap: (index) {
                      selectedIndex = index;
                    },
                    indicatorColor: Colors.transparent,
                    labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    labelColor: Colors.teal,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        child: Text('Upcoming'),
                      ),
                      Tab(
                        child: Text('Finished'),
                      ),
                      Tab(
                        child: Text('Favorites'),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(controller: tabController, children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      child: ListView.builder(
                        itemBuilder: (context, index) => UpComingWidget(hotel: hotel!.hotelsList![index],),
                        itemCount: 2,
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      child: ListView.builder(
                        itemBuilder: (context, index) => FinishedWidget(hotel: hotel!.hotelsList![index]),
                        itemCount: 1,
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      child: ListView.builder(
                        itemBuilder: (context, index) => FavoriteWidget(hotel: hotel!.hotelsList![index]),
                        itemCount: 3,
                      )),
                ]),
              )
            ]),
          );
        } else
          return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
