import 'package:algoriza_booking_app/feature/auth/presentation/components/login_button.dart';
import 'package:algoriza_booking_app/feature/explore/presentation/controllers/hotels_cubit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../auth/presentation/components/login-text-form-field.dart';
import '../components/best_deals_explore_builder.dart';
import '../components/popular_destination_builder.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  ScrollController _controller = ScrollController();
  bool silverCollapsed = false;

  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<HotelsCubit>(context).exploreHotels(count: 10, page: 1);

    super.initState();
    _controller = ScrollController();

    _controller.addListener(() {
      if (_controller.offset > 220 && !_controller.position.outOfRange) {
        if (!silverCollapsed) {
          silverCollapsed = true;
          setState(() {});
        }
      }
      if (_controller.offset <= 220 && !_controller.position.outOfRange) {
        if (silverCollapsed) {
          silverCollapsed = false;
          setState(() {});
        }
      }
      // if (_controller.position.extentAfter == 0 &&
      //     !BlocProvider.of<HotelsCubit>(context).isEnd) {
      //   debugPrint('the end');
      //   BlocProvider.of<HotelsCubit>(context).toggleIsEnd();
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelsCubit, HotelsStates>(
      builder: (context, state) {
        if (state is HotelsLoadedState) {
          var hotel = state.hotels.generalData;
          return NestedScrollView(
            controller: _controller,
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                    expandedHeight: 450,
                    toolbarHeight: 80,
                    collapsedHeight: 100,
                    elevation: 100,
                    automaticallyImplyLeading: false,
                    title: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: LoginTextFormField(
                        title: '',
                        hintText: 'Where are you going?',
                        prefix: Icons.search,
                      ),
                    ),
                    pinned: true,
                    //floating: true,
                    //snap: true,
                    flexibleSpace: Stack(
                      children: [
                        Positioned.fill(
                          child: CarouselSlider(
                            items: [
                              Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/GetStarted.jpg',
                                          ),
                                          fit: BoxFit.cover)),
                                  child: Visibility(
                                    visible: silverCollapsed ? false : true,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30.0, bottom: 30),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Find best deals',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                color: Colors.white),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            'Extraordinary five-star \noutdoor activities',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                letterSpacing: 1,
                                                color: Colors.white),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          DefaultButton(
                                            title: 'View Hotel',
                                            size: 15,
                                            width: 120,
                                            height: 40,
                                            ontap: () {
                                              Navigator.pushNamed(context, Routes.exploreHotelScreen);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/slider1.jpg',
                                          ),
                                          fit: BoxFit.cover)),
                                  child: Visibility(
                                    visible: silverCollapsed ? false : true,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30.0, bottom: 30),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Cape Town',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                color: Colors.white),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            'Extraordinary five-star \noutdoor activities',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                letterSpacing: 1,
                                                color: Colors.white),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          DefaultButton(
                                            title: 'View Hotel',
                                            size: 15,
                                            width: 120,
                                            height: 40,
                                            ontap: () {
                                              Navigator.pushNamed(context, Routes.exploreHotelScreen);

                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                              Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/slider2.jpg',
                                          ),
                                          fit: BoxFit.cover)),
                                  child: Visibility(
                                    visible: silverCollapsed ? false : true,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30.0, bottom: 30),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Find best deals',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                color: Colors.white),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            'Extraordinary five-star \noutdoor activities',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                letterSpacing: 1,
                                                color: Colors.white),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          DefaultButton(
                                            title: 'View Hotel',
                                            size: 15,
                                            width: 120,
                                            height: 40,
                                            ontap: () {
                                              Navigator.pushNamed(context, Routes.exploreHotelScreen);

                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  )),
                            ],
                            options: CarouselOptions(
                                height: 480,
                                initialPage: 0,
                                viewportFraction: 1,
                                enableInfiniteScroll: true,
                                reverse: false,
                                autoPlay: true,
                                autoPlayInterval: const Duration(seconds: 3),
                                autoPlayAnimationDuration:
                                    const Duration(seconds: 1),
                                autoPlayCurve: Curves.fastOutSlowIn),
                          ),
                        )
                      ],
                    )),
                // SliverList(
                //   delegate: SliverChildBuilderDelegate(
                //         (_, int index) {
                //       return ListTile(
                //         leading: Container(
                //             padding: EdgeInsets.all(8),
                //             width: 100,
                //             child: Placeholder()),
                //         title: Text('Place ${index + 1}', textScaleFactor: 2),
                //       );
                //     },
                //     childCount: 20,
                //   ),
                // ),
              ];
            },
            body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Popular Destination',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                        ],
                      ),
                      PopularDestinationBuilder(),
                      Row(
                        children: [
                          const Text(
                            'Best deals',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: Row(
                                children: const [
                                  Text('View all'),
                                  Icon(Icons.arrow_forward_sharp)
                                ],
                              ))
                        ],
                      ),
                      ListView.builder(
                        padding: const EdgeInsets.all(0),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: hotel!.hotelsList!.length,
                        //physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) =>
                            ExploreBuilderWidget(
                          hotel: hotel.hotelsList![index],
                        ),
                      ),
                      // if (BlocProvider.of<HotelsCubit>(context).isEnd)
                      //   const Padding(
                      //     padding: EdgeInsets.all(24.0),
                      //     child: CircularProgressIndicator(),
                      //   ),
                    ],
                  ),
                )),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
