import 'package:algoriza_booking_app/config/routes/app_routes.dart';
import 'package:algoriza_booking_app/core/services/service_locator.dart';
import 'package:algoriza_booking_app/feature/explore/presentation/components/explore_Widget_comp.dart';
import 'package:algoriza_booking_app/feature/explore/presentation/components/line.dart';
import 'package:algoriza_booking_app/feature/search/presentation/controllers/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExploreHotelWidget extends StatelessWidget {
  ExploreHotelWidget({Key? key}) : super(key: key);
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchStates>(
      builder: (context, state) {
        if(state is SearchInitial){
          return Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextFormField(
                      controller: controller,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: 'London...',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                        fillColor: Colors.grey.shade700,
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey.shade700,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(30.0)),
                          borderSide: BorderSide(
                            color: Colors.grey.shade700,
                          ),
                        ),
                        filled: true,
                        contentPadding: const EdgeInsets.only(
                            bottom: 10.0, left: 10.0, right: 10.0),
                      ),
                      onFieldSubmitted: (value) {
                        BlocProvider.of<SearchCubit>(context)
                            .search(name: controller.text);
                      },
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.teal),
                      child: IconButton(
                        icon: const Icon(
                          Icons.search_rounded,
                          color: Colors.black,
                          size: 25,
                        ),
                        onPressed: () {
                          BlocProvider.of<SearchCubit>(context)
                              .search(name: controller.text,);
                        },
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Choose Date',
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              '27, Sep - 02, Oct',
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                        Line(
                          lineWidth: 1,
                          lineHeight: 52,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Choose Date',
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              '27, Sep - 02, Oct',
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Line(
                lineWidth: MediaQuery.of(context).size.width * 0.9,
                lineHeight: 1,
              ),
            ],
          );
      }
        if (state is SearchSuccessState)
        {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: TextFormField(
                        controller: controller,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          hintText: 'London...',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                          fillColor: Colors.grey.shade700,
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                50.0,
                              ),
                            ),
                            borderSide: BorderSide(
                              color: Colors.grey.shade700,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30.0)),
                            borderSide: BorderSide(
                              color: Colors.grey.shade700,
                            ),
                          ),
                          filled: true,
                          contentPadding: const EdgeInsets.only(
                              bottom: 10.0, left: 10.0, right: 10.0),
                        ),
                        onFieldSubmitted: (value) {
                          BlocProvider.of<SearchCubit>(context)
                              .search(name: controller.text);
                        },
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.teal),
                        child: IconButton(
                          icon: const Icon(
                            Icons.search_rounded,
                            color: Colors.black,
                            size: 25,
                          ),
                          onPressed: () {
                            BlocProvider.of<SearchCubit>(context)
                                .search(name: controller.text);
                          },
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Choose Date',
                                style: TextStyle(color: Colors.grey.shade500),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                '27, Sep - 02, Oct',
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                          Line(
                            lineWidth: 1,
                            lineHeight: 52,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Choose Date',
                                style: TextStyle(color: Colors.grey.shade500),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                '27, Sep - 02, Oct',
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Line(
                  lineWidth: MediaQuery.of(context).size.width * 0.9,
                  lineHeight: 1,
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${state.searchData.generalSearchData.hotelsList.length} Hotel Found',
                        style: const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, Routes.filterScreenRoute);
                        },
                        child: Row(
                          children: [
                            const Text(
                              'Filter',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const Icon(
                              Icons.filter_list_rounded,
                              color: Colors.teal,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 8),
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) =>
                             ExploreWidgetComponent(hotel: state.searchData.generalSearchData.hotelsList[index]),
                        itemCount: state.searchData.generalSearchData.hotelsList.length,
                      )),
                ),
              ],
            ),
          );
        }
        return Container();
        //   Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
        //   child: Column(
        //     children: [
        //       const SizedBox(
        //         height: 20,
        //       ),
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: [
        //           SizedBox(
        //             width: MediaQuery.of(context).size.width * 0.7,
        //             child: TextFormField(
        //               style: const TextStyle(
        //                 color: Colors.white,
        //               ),
        //               decoration: InputDecoration(
        //                 hintText: 'London...',
        //                 hintStyle: TextStyle(
        //                   color: Colors.grey.shade500,
        //                 ),
        //                 fillColor: Colors.grey.shade700,
        //                 border: OutlineInputBorder(
        //                   borderRadius: const BorderRadius.all(
        //                     Radius.circular(
        //                       50.0,
        //                     ),
        //                   ),
        //                   borderSide: BorderSide(
        //                     color: Colors.grey.shade700,
        //                   ),
        //                 ),
        //                 focusedBorder: OutlineInputBorder(
        //                   borderRadius:
        //                       const BorderRadius.all(Radius.circular(30.0)),
        //                   borderSide: BorderSide(
        //                     color: Colors.grey.shade700,
        //                   ),
        //                 ),
        //                 filled: true,
        //                 contentPadding: const EdgeInsets.only(
        //                     bottom: 10.0, left: 10.0, right: 10.0),
        //               ),
        //               onFieldSubmitted: (value) {
        //                 BlocProvider.of<SearchCubit>(context)
        //                     .search(name: value);
        //               },
        //             ),
        //           ),
        //           Container(
        //             padding: const EdgeInsets.all(10),
        //             decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(60),
        //                 color: Colors.teal),
        //             child: const Icon(
        //               Icons.search_rounded,
        //               color: Colors.black,
        //               size: 25,
        //             ),
        //           ),
        //         ],
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(12.0),
        //         child: Column(
        //           children: [
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceAround,
        //               children: [
        //                 Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                 Text(
        //                   'Choose Date',
        //                   style: TextStyle(color: Colors.grey.shade500),
        //                 ),
        //                 const SizedBox(
        //                       height: 8,
        //                     ),
        //                 const Text(
        //                   '27, Sep - 02, Oct',
        //                   style: TextStyle(color: Colors.white),
        //                 ),
        //                 const SizedBox(
        //                   height: 20,
        //                 )
        //               ],
        //             ),
        //             Line(
        //               lineWidth: 1,
        //               lineHeight: 52,
        //             ),
        //             Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Text(
        //                   'Choose Date',
        //                   style: TextStyle(color: Colors.grey.shade500),
        //                 ),
        //                 const SizedBox(
        //                       height: 8,
        //                     ),
        //                 const Text(
        //                   '27, Sep - 02, Oct',
        //                   style: TextStyle(color: Colors.white),
        //                 ),
        //                     const SizedBox(
        //                       height: 20,
        //                     )
        //                   ],
        //                 ),
        //               ],
        //             )
        //           ],
        //         ),
        //       ),
        //       Line(
        //         lineWidth: MediaQuery.of(context).size.width * 0.9,
        //         lineHeight: 1,
        //       ),
        //       const SizedBox(
        //         height: 15,
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.symmetric(horizontal: 8.0),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             const Text(
        //               '7 Hotel Found',
        //               style: TextStyle(color: Colors.white, fontSize: 16),
        //             ),
        //             InkWell(
        //               onTap: () {
        //                 Navigator.pushNamed(context, Routes.filterScreenRoute);
        //               },
        //               child: Row(
        //                 children: [
        //                   const Text(
        //                     'Filter',
        //                     style: TextStyle(color: Colors.white, fontSize: 16),
        //                   ),
        //                   const SizedBox(
        //                     width: 6,
        //                   ),
        //                   const Icon(
        //                     Icons.filter_list_rounded,
        //                     color: Colors.teal,
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //       Expanded(
        //         child: Container(
        //             padding:
        //                 const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        //             child: ListView.builder(
        //               physics: const BouncingScrollPhysics(),
        //               itemBuilder: (context, index) =>
        //                     ExploreWidgetComponent(),
        //               itemCount: 6,
        //             )),
        //       ),
        //     ],
        //   ),
        // );
      },
    );
  }
}
