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
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      const Text(
        'My Trip',
        style: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
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
          labelStyle: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700),
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
    ]);
  }
}
