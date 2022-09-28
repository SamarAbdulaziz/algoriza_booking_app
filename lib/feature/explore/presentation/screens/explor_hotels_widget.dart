import 'package:algoriza_booking_app/feature/booking/presentation/components/favorite_widget.dart';
import 'package:algoriza_booking_app/feature/booking/presentation/components/upcoming_widget.dart';
import 'package:algoriza_booking_app/feature/explore/presentation/components/explore_Widget_comp.dart';
import 'package:algoriza_booking_app/feature/explore/presentation/components/line.dart';
import 'package:flutter/material.dart';

class ExploreHotelWidget extends StatelessWidget {
  const ExploreHotelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: 'London...',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                    fillColor: Colors.grey.shade700,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          50.0,
                        ),
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey.shade700,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(
                        color: Colors.grey.shade700,
                      ),
                    ),
                    filled: true,
                    contentPadding: const EdgeInsets.only(
                        bottom: 10.0, left: 10.0, right: 10.0),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.teal),
                child: Icon(
                  Icons.search_rounded,
                  color: Colors.black,
                  size: 25,
                ),
              ),
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
                        SizedBox(
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
                        SizedBox(
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
            lineWidth: MediaQuery.of(context).size.width*0.9,
            lineHeight: 1,
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '20 Hotel Found',
                  style: TextStyle(color: Colors.white,fontSize: 16),
                ),
                Row(
                  children: [
                    Text(
                      'Filtter',
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                    SizedBox(width: 6,),
                    Icon(Icons.filter_list_rounded,color: Colors.teal,),
                  ],
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => ExploreWidgetComponent(),
                  itemCount: 6,
                )),
          ),
        ],
      ),
    );
  }
}
