// import 'package:algoriza_booking_app/feature/auth/presentation/components/login_button.dart';
// import 'package:algoriza_booking_app/feature/explore/presentation/components/explore_Widget_comp.dart';
// import 'package:algoriza_booking_app/feature/explore/presentation/components/line.dart';
// import 'package:algoriza_booking_app/feature/search/presentation/controllers/search_cubit.dart';
// import 'package:algoriza_booking_app/feature/search/presentation/screens/searched_results.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:syncfusion_flutter_sliders/sliders.dart';
//
// class FilterWidget extends StatefulWidget {
//   FilterWidget({Key? key}) : super(key: key);
//
//   @override
//   State<FilterWidget> createState() => _FilterWidgetState();
// }
//
// class _FilterWidgetState extends State<FilterWidget> {
//   double valueSlider = 0;
//   SfRangeValues valuesSlid = const SfRangeValues(0.0, 100.0);
//   double minValue = 0;
//   double maxValue = 100;
//   double lowerValue = 0.0;
//   double upperValue = 100.0;
//  int? x1 ;
//  int? x2 ;
//  int? x3 ;
//  int? x4 ;
//  int? x5 ;
//  int? x6 ;
//   List<bool> checkedValue = [
//     false,
//     false,
//     false,
//     false,
//     false,
//     false,
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           const Text(
//             'Filter',
//             style: TextStyle(
//                 color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//           const Text(
//             'price (for 1 night)',
//             style: TextStyle(color: Colors.grey),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           SfRangeSlider(
//               labelPlacement: LabelPlacement.betweenTicks,
//               inactiveColor: Colors.grey,
//               min: 0.0,
//               max: 100.0,
//               interval: 20,
//               showTicks: true,
//               showLabels: true,
//               enableTooltip: true,
//               minorTicksPerInterval: 1,
//               values: valuesSlid,
//               onChanged: (SfRangeValues values) {
//                 setState(() {
//                   valuesSlid = values;
//                 });
//               }),
//           const SizedBox(
//             height: 6,
//           ),
//           const SizedBox(
//             height: 6,
//           ),
//           Line(
//             lineHeight: 1,
//             lineWidth: MediaQuery.of(context).size.width * 0.8,
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//           const Text(
//             'Popular filter',
//             style: TextStyle(color: Colors.grey, fontSize: 15),
//           ),
//           const SizedBox(
//             height: 6,
//           ),
//           BlocBuilder<SearchCubit, SearchStates>(
//             builder: (context, state) {
//               BlocProvider.of<SearchCubit>(context).getFacilities();
//               if (state is FacilitiesSuccessState) {
//                 var facility = state.facilities.facilitiesList;
//                 return Column(
//                   children: [
//                     Row(
//                       children: [
//                         Expanded(
//                             child: Container(
//                           color: Colors.black,
//                           width: double.infinity,
//                           // height: MediaQuery.of(context).size.height*0.08,
//                           child: CheckboxListTile(
//                             dense: true,
//                             selectedTileColor: Colors.white,
//                             checkColor: Colors.teal,
//                             side: const BorderSide(color: Colors.grey),
//                             title: Text(facility[0].name),
//                             value: checkedValue[0],
//                             activeColor: Colors.white,
//                             selected: true,
//                             onChanged: (newValue) {
//                               setState(() {
//                                 checkedValue[0] = newValue!;
//                                 x1 = 5;
//                                 debugPrint(checkedValue[0].toString());
//                               });
//                             },
//                             controlAffinity: ListTileControlAffinity
//                                 .leading, //  <-- leading Checkbox
//                           ),
//                         )),
//                         Expanded(
//                             child: Container(
//                           color: Colors.black,
//                           width: double.infinity,
//                           // height: MediaQuery.of(context).size.height*0.08,
//                           child: CheckboxListTile(
//                             dense: true,
//                             selectedTileColor: Colors.white,
//                             checkColor: Colors.teal,
//                             side: const BorderSide(color: Colors.grey),
//                             title: Text(facility[1].name),
//                             value: checkedValue[1],
//                             activeColor: Colors.white,
//                             selected: true,
//                             onChanged: (newValue) {
//                               setState(() {
//                                 checkedValue[1] = newValue!;
//                                 x2 = 6;
//                               });
//                             },
//                             controlAffinity: ListTileControlAffinity
//                                 .leading, //  <-- leading Checkbox
//                           ),
//                         )),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                             child: Container(
//                           color: Colors.black,
//                           width: double.infinity,
//                           // height: MediaQuery.of(context).size.height*0.08,
//                           child: CheckboxListTile(
//                             dense: true,
//                             selectedTileColor: Colors.white,
//                             checkColor: Colors.teal,
//                             side: const BorderSide(color: Colors.grey),
//                             title: Text(facility[2].name),
//                             value: checkedValue[2],
//                             activeColor: Colors.white,
//                             selected: true,
//                             onChanged: (newValue) {
//                               setState(() {
//                                 checkedValue[2] = newValue!;
//                                 x3 = 7;
//                               });
//                             },
//                             controlAffinity: ListTileControlAffinity
//                                 .leading, //  <-- leading Checkbox
//                           ),
//                         )),
//                         Expanded(
//                             child: Container(
//                           color: Colors.black,
//                           width: double.infinity,
//                           // height: MediaQuery.of(context).size.height*0.08,
//                           child: CheckboxListTile(
//                             dense: true,
//                             selectedTileColor: Colors.white,
//                             checkColor: Colors.teal,
//                             side: const BorderSide(color: Colors.grey),
//                             title: Text(facility[3].name),
//                             value: checkedValue[3],
//                             activeColor: Colors.white,
//                             selected: true,
//                             onChanged: (newValue) {
//                               setState(() {
//                                 checkedValue[3] = newValue!;
//                                 x4 = 8;
//                               });
//                             },
//                             controlAffinity: ListTileControlAffinity
//                                 .leading, //  <-- leading Checkbox
//                           ),
//                         )),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                             child: Container(
//                           color: Colors.black,
//                           width: double.infinity,
//                           // height: MediaQuery.of(context).size.height*0.08,
//                           child: CheckboxListTile(
//                             dense: true,
//                             selectedTileColor: Colors.white,
//                             checkColor: Colors.teal,
//                             side: const BorderSide(color: Colors.grey),
//                             title: Text(facility[4].name),
//                             value: checkedValue[4],
//                             activeColor: Colors.white,
//                             selected: true,
//                             onChanged: (newValue) {
//                               setState(() {
//                                 checkedValue[4] = newValue!;
//                                 x5 = 9;
//                               });
//                             },
//                             controlAffinity: ListTileControlAffinity
//                                 .leading, //  <-- leading Checkbox
//                           ),
//                         )),
//                         Expanded(
//                             child: Container(
//                           color: Colors.black,
//                           width: double.infinity,
//                           // height: MediaQuery.of(context).size.height*0.08,
//                           child: CheckboxListTile(
//                             dense: true,
//                             selectedTileColor: Colors.white,
//                             checkColor: Colors.teal,
//                             side: const BorderSide(color: Colors.grey),
//                             title: Text(facility[5].name),
//                             value: checkedValue[5],
//                             activeColor: Colors.white,
//                             selected: true,
//                             onChanged: (newValue) {
//                               setState(() {
//                                 checkedValue[5] = newValue!;
//                                 x6 = 10;
//                               });
//                             },
//                             controlAffinity: ListTileControlAffinity
//                                 .leading, //  <-- leading Checkbox
//                           ),
//                         )),
//                       ],
//                     ),
//                   ],
//                 );
//               } else
//                 return Container();
//             },
//           ),
//           Line(
//             lineHeight: 1,
//             lineWidth: MediaQuery.of(context).size.width * 0.8,
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//           const Text(
//             'Distance from city center',
//             style: TextStyle(color: Colors.grey, fontSize: 15),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           SfSlider(
//             min: 0.0,
//             max: 100.0,
//             value: valueSlider,
//             interval: 20,
//             showTicks: true,
//             showLabels: true,
//             enableTooltip: true,
//             minorTicksPerInterval: 1,
//             inactiveColor: Colors.grey,
//             onChanged: (dynamic value) {
//               setState(() {
//                 valueSlider = value;
//               });
//             },
//           ),
//           const SizedBox(
//             height: 16,
//           ),
//           Line(
//             lineHeight: 1,
//             lineWidth: MediaQuery.of(context).size.width * 0.8,
//           ),
//           const Spacer(),
//           BlocBuilder<SearchCubit, SearchStates>(
//             builder: (context, state) {
//               if (state is SearchInitial) {
//                 return DefaultButton(
//                     title: 'Apply',
//                     ontap: () {
//                       BlocProvider.of<SearchCubit>(context)
//                           .search(
//                         //name: 'Palm',
//                         minPrice: valuesSlid.start.toInt(),
//                         maxPrice: valuesSlid.end.toInt(),
//                         facilities: [x1!, x2!, x3!, x4!, x5!, x6!],
//                         distance: valueSlider,
//                       );
//                     });
//               } if (state is SearchSuccessState) {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => SearchedResult(
//                               hotels:
//                                   state.searchData.generalSearchData.hotelsList,
//                             )));
//                 return Container();
//               } else
//                 return Container();
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
//
// //   @override
// //   Widget build(BuildContext context) {
// //     return BlocBuilder<SearchCubit, SearchStates>(
// //       builder: (context, state) {
// //         return Container(
// //           padding: const EdgeInsets.symmetric(horizontal: 20),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.stretch,
// //             children: [
// //               const Text(
// //                 'Filter',
// //                 style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 24,
// //                     fontWeight: FontWeight.bold),
// //               ),
// //               const SizedBox(
// //                 height: 16,
// //               ),
// //               const Text(
// //                 'price (for 1 night)',
// //                 style: TextStyle(color: Colors.grey),
// //               ),
// //               const SizedBox(
// //                 height: 20,
// //               ),
// //               SfRangeSlider(
// //                   labelPlacement: LabelPlacement.betweenTicks,
// //                   inactiveColor: Colors.grey,
// //                   min: 0.0,
// //                   max: 100.0,
// //                   interval: 20,
// //                   showTicks: true,
// //                   showLabels: true,
// //                   enableTooltip: true,
// //                   minorTicksPerInterval: 1,
// //                   values: valuesSlid,
// //                   onChanged: (SfRangeValues values) {
// //                     setState(() {
// //                       valuesSlid = values;
// //                       print(valuesSlid.start);
// //                     });
// //                   }),
// //               const SizedBox(
// //                 height: 6,
// //               ),
// //               const SizedBox(
// //                 height: 6,
// //               ),
// //               Line(
// //                 lineHeight: 1,
// //                 lineWidth: MediaQuery.of(context).size.width * 0.8,
// //               ),
// //               const SizedBox(
// //                 height: 16,
// //               ),
// //               const Text(
// //                 'Popular filter',
// //                 style: TextStyle(color: Colors.grey, fontSize: 15),
// //               ),
// //               const SizedBox(
// //                 height: 6,
// //               ),
// //               BlocBuilder<SearchCubit, SearchStates>(
// //                 builder: (context, state) {
// //                   BlocProvider.of<SearchCubit>(context).getFacilities();
// //                   if (state is FacilitiesSuccessState) {
// //                     return Container(
// //                       height:250.0,
// //                       child: ListView.builder(
// //                         shrinkWrap: true,
// //
// //                         itemCount: state.facilities.facilitiesList.length,
// //                         itemBuilder: (context, index) => CheckboxListTile(
// //                           dense: true,
// //                           //selectedTileColor: Colors.white,
// //                           checkColor: Colors.teal,
// //                           side: BorderSide(color: Colors.grey),
// //                           title:
// //                               Text(state.facilities.facilitiesList[index].name),
// //                           value: checkedValue,
// //                           activeColor: Colors.white,
// //                           selected: true,
// //                           onChanged: (newValue) {
// //                             setState(() {
// //                               checkedValue = newValue!;
// //                               x![index] = index + 6;
// //                             });
// //                           },
// //                           controlAffinity: ListTileControlAffinity
// //                               .leading, //  <-- leading Checkbox
// //                         ),
// //                       ),
// //                     );
// //                   } else {
// //                     return CheckboxListTile(
// //                       dense: true,
// //                       //selectedTileColor: Colors.white,
// //                       checkColor: Colors.teal,
// //                       side: BorderSide(color: Colors.grey),
// //                       title: Text('widget.checkedTitle'),
// //                       value: checkedValue,
// //                       activeColor: Colors.white,
// //                       selected: true,
// //                       onChanged: (newValue) {
// //                         setState(() {
// //                           checkedValue = newValue!;
// //                         });
// //                       },
// //                       controlAffinity: ListTileControlAffinity
// //                           .leading, //  <-- leading Checkbox
// //                     );
// //                   }
// //                 },
// //               ),
// //               Line(
// //                 lineHeight: 1,
// //                 lineWidth: MediaQuery.of(context).size.width * 0.8,
// //               ),
// //               const SizedBox(
// //                 height: 16,
// //               ),
// //               const Text(
// //                 'Distance from city center',
// //                 style: TextStyle(color: Colors.grey, fontSize: 15),
// //               ),
// //               const SizedBox(
// //                 height: 20,
// //               ),
// //               SfSlider(
// //                 min: 0.0,
// //                 max: 10.0,
// //                 value: valueSlider,
// //                 interval: 20,
// //                 showTicks: true,
// //                 showLabels: true,
// //                 enableTooltip: true,
// //                 minorTicksPerInterval: 1,
// //                 inactiveColor: Colors.grey,
// //                 onChanged: (dynamic value) {
// //                   setState(() {
// //                     valueSlider = value;
// //                     print(valueSlider);
// //                   });
// //                 },
// //               ),
// //               const SizedBox(
// //                 height: 16,
// //               ),
// //               Line(
// //                 lineHeight: 1,
// //                 lineWidth: MediaQuery.of(context).size.width * 0.8,
// //               ),
// //               const Spacer(),
// //               DefaultButton(
// //                   title: 'Apply',
// //                   ontap: () {
// //                     BlocProvider.of<SearchCubit>(context).search(
// //                       //name: 'Palm',
// //                       minPrice: valuesSlid.start.toInt(),
// //                       maxPrice: valuesSlid.end.toInt(),
// //                       facilities: x,
// //                       distance: valueSlider,
// //                     );
// //                   })
// //             ],
// //           ),
// //         );
// //       },
// //     );
// //   }
// // }
