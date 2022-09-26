import 'package:algoriza_booking_app/feature/booking/presentation/components/favorite_widget.dart';
import 'package:algoriza_booking_app/feature/booking/presentation/components/finished_widget.dart';
import 'package:algoriza_booking_app/feature/booking/presentation/components/hotel_pressed.dart';
import 'package:algoriza_booking_app/feature/booking/presentation/components/upcoming_widget.dart';
import 'package:flutter/material.dart';

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
    tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.0),
          child: const Text(
            'My Trip',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
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
            labelColor: Colors.green,
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
        Expanded(
          child: TabBarView(controller: tabController, children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: ListView.builder(
                  itemBuilder: (context, index) => UpComingWidget(),
                  itemCount: 6,
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: ListView.builder(
                  itemBuilder: (context, index) => FinishedWidget(),
                  itemCount: 6,
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: ListView.builder(
                  itemBuilder: (context, index) => FavoriteWidget(),
                  itemCount: 6,
                )),
          ]),
        )
      ]),
    );
  }
}
