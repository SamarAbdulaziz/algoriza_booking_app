import 'package:algoriza_booking_app/core/services/service_locator.dart';
import 'package:algoriza_booking_app/feature/auth/presentation/components/login_button.dart';
import 'package:algoriza_booking_app/feature/search/presentation/componnet/line.dart';
import 'package:algoriza_booking_app/feature/search/presentation/controllers/search_cubit.dart';
import 'package:algoriza_booking_app/feature/search/presentation/screens/searched_results.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class NewFilterScreen extends StatefulWidget {
  const NewFilterScreen({Key? key}) : super(key: key);

  @override
  State<NewFilterScreen> createState() => _NewFilterScreenState();
}

class _NewFilterScreenState extends State<NewFilterScreen> {
  double valueSlider = 0;

  SfRangeValues valuesSlid = const SfRangeValues(0.0, 100.0);

  double minValue = 0;

  double maxValue = 100;

  double lowerValue = 0.0;

  double upperValue = 100.0;
  List<int> x = [];
  List<bool> checkedValue = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchCubit>(
      create: (context) => sl<SearchCubit>()..getFacilities(),
      child: BlocBuilder<SearchCubit, SearchStates>(
        builder: (context, state) {
          if (state is FacilitiesSuccessState) {
            var facility = state.facilities.facilitiesList;
            return Scaffold(
              backgroundColor: Colors.black,
              appBar: AppBar(
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ),
              body: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Filter',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'price (for 1 night)',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SfRangeSlider(
                        labelPlacement: LabelPlacement.betweenTicks,
                        inactiveColor: Colors.grey,
                        min: 0.0,
                        max: 100.0,
                        interval: 20,
                        showTicks: true,
                        showLabels: true,
                        enableTooltip: true,
                        minorTicksPerInterval: 1,
                        values: valuesSlid,
                        onChanged: (SfRangeValues values) {
                          setState(() {
                            valuesSlid = values;
                          });
                        }),
                    const SizedBox(
                      height: 6,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Line(
                      lineHeight: 1,
                      lineWidth: MediaQuery.of(context).size.width * 0.8,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Popular filter',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              color: Colors.black,
                              width: double.infinity,
                              // height: MediaQuery.of(context).size.height*0.08,
                              child: CheckboxListTile(
                                dense: true,
                                selectedTileColor: Colors.white,
                                checkColor: Colors.teal,
                                side: BorderSide(color: Colors.grey),
                                title: Text(facility[0].name),
                                value: checkedValue[0],
                                activeColor: Colors.white,
                                selected: true,
                                onChanged: (newValue) {
                                  setState(() {
                                    checkedValue[0] = newValue!;
                                    if (checkedValue[0] == true) {
                                      x.add(5);
                                      print(x);
                                    } else
                                      x.remove(5);
                                    print(x);
                                  });
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                            )),
                            Expanded(
                                child: Container(
                              color: Colors.black,
                              width: double.infinity,
                              // height: MediaQuery.of(context).size.height*0.08,
                              child: CheckboxListTile(
                                dense: true,
                                selectedTileColor: Colors.white,
                                checkColor: Colors.teal,
                                side: BorderSide(color: Colors.grey),
                                title: Text(facility[1].name),
                                value: checkedValue[1],
                                activeColor: Colors.white,
                                selected: true,
                                onChanged: (newValue) {
                                  setState(() {
                                    checkedValue[1] = newValue!;
                                    if (checkedValue[1] == true) {
                                      x.add(6);
                                      print(x);
                                    } else
                                      x.remove(6);
                                    print(x);
                                  });
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                            )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              color: Colors.black,
                              width: double.infinity,
                              // height: MediaQuery.of(context).size.height*0.08,
                              child: CheckboxListTile(
                                dense: true,
                                selectedTileColor: Colors.white,
                                checkColor: Colors.teal,
                                side: BorderSide(color: Colors.grey),
                                title: Text(facility[2].name),
                                value: checkedValue[2],
                                activeColor: Colors.white,
                                selected: true,
                                onChanged: (newValue) {
                                  setState(() {
                                    checkedValue[2] = newValue!;
                                    if (checkedValue[2] == true) {
                                      x.add(7);
                                      print(x);
                                    } else
                                      x.remove(7);
                                    print(x);
                                  });
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                            )),
                            Expanded(
                                child: Container(
                              color: Colors.black,
                              width: double.infinity,
                              // height: MediaQuery.of(context).size.height*0.08,
                              child: CheckboxListTile(
                                dense: true,
                                selectedTileColor: Colors.white,
                                checkColor: Colors.teal,
                                side: BorderSide(color: Colors.grey),
                                title: Text(facility[3].name),
                                value: checkedValue[3],
                                activeColor: Colors.white,
                                selected: true,
                                onChanged: (newValue) {
                                  setState(() {
                                    checkedValue[3] = newValue!;
                                    if (checkedValue[3] == true) {
                                      x.add(8);
                                      print(x);
                                    } else
                                      x.remove(8);
                                    print(x);
                                  });
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                            )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              color: Colors.black,
                              width: double.infinity,
                              // height: MediaQuery.of(context).size.height*0.08,
                              child: CheckboxListTile(
                                dense: true,
                                selectedTileColor: Colors.white,
                                checkColor: Colors.teal,
                                side: BorderSide(color: Colors.grey),
                                title: Text(facility[4].name),
                                value: checkedValue[4],
                                activeColor: Colors.white,
                                selected: true,
                                onChanged: (newValue) {
                                  setState(() {
                                    checkedValue[4] = newValue!;
                                    if (checkedValue[4] == true) {
                                      x.add(9);
                                      print(x);
                                    } else
                                      x.remove(9);
                                    print(x);
                                  });
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                            )),
                            Expanded(
                                child: Container(
                              color: Colors.black,
                              width: double.infinity,
                              // height: MediaQuery.of(context).size.height*0.08,
                              child: CheckboxListTile(
                                dense: true,
                                selectedTileColor: Colors.white,
                                checkColor: Colors.teal,
                                side: BorderSide(color: Colors.grey),
                                title: Text(facility[5].name),
                                value: checkedValue[5],
                                activeColor: Colors.white,
                                selected: true,
                                onChanged: (newValue) {
                                  setState(() {
                                    checkedValue[5] = newValue!;
                                    if (checkedValue[5] == true) {
                                      x.add(10);
                                      print(x);
                                    } else
                                      x.remove(10);
                                    print(x);
                                  });
                                },
                                controlAffinity: ListTileControlAffinity
                                    .leading, //  <-- leading Checkbox
                              ),
                            )),
                          ],
                        ),
                      ],
                    ),
                    Line(
                      lineHeight: 1,
                      lineWidth: MediaQuery.of(context).size.width * 0.8,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Distance from city center',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SfSlider(
                      min: 0.0,
                      max: 100.0,
                      value: valueSlider,
                      interval: 20,
                      showTicks: true,
                      showLabels: true,
                      enableTooltip: true,
                      minorTicksPerInterval: 1,
                      inactiveColor: Colors.grey,
                      onChanged: (dynamic value) {
                        setState(() {
                          valueSlider = value;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Line(
                      lineHeight: 1,
                      lineWidth: MediaQuery.of(context).size.width * 0.8,
                    ),
                    const Spacer(),
                    BlocBuilder<SearchCubit, SearchStates>(
                      builder: (context, state) {
                        if (state is FacilitiesSuccessState) {
                          return DefaultButton(
                              title: 'Apply',
                              ontap: () {
                                BlocProvider.of<SearchCubit>(context)
                                    .search(
                                  //name: 'Palm',
                                  minPrice: valuesSlid.start.toInt(),
                                  maxPrice: valuesSlid.end.toInt(),
                                  facilities:x,
                                  distance: valueSlider,
                                );
                                Navigator.pop(context);
                              });
                        } if (state is SearchSuccessState) {
                          Navigator.pop(context);
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => SearchedResult(
                          //           hotels:
                          //           state.searchData.generalSearchData.hotelsList,
                          //         )));
                          return Container();
                        } else
                          return Container();
                      },
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
