import 'package:algoriza_booking_app/feature/explore/presentation/components/check_box_widget.dart';
import 'package:algoriza_booking_app/feature/explore/presentation/components/line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FiltterWidget extends StatefulWidget {
  FiltterWidget({Key? key}) : super(key: key);

  @override
  State<FiltterWidget> createState() => _FiltterWidgetState();
}

class _FiltterWidgetState extends State<FiltterWidget> {
  double valueSlider = 0;

  double minValue = 0;
  double maxValue = 100;
  double lowerValue = 0.0;
  double upperValue = 100.0;
  var selectRangeSlider = RangeValues(0.0, 100);
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Filtter',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'price (for 1 night)',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 6,
          ),
          RangeSlider(
              labels: RangeLabels('${selectRangeSlider.toString()}',
                  '${selectRangeSlider.toString()}'),
              min: lowerValue,
              max: maxValue,
              inactiveColor: Colors.grey,
              activeColor: Colors.teal,
              values: selectRangeSlider,
              onChanged: (RangeValues newRange) {
                setState(() {
                  selectRangeSlider = newRange;
                });
              }),
          SizedBox(
            height: 6,
          ),
          Line(
            lineHeight: 1,
            lineWidth: MediaQuery.of(context).size.width * 0.8,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Popular filter',
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Expanded(child: CheckBoxWidget(checkedTitle: 'Free Breakfast')),
              Expanded(child: CheckBoxWidget(checkedTitle: 'Free Parking')),
            ],
          ),
          Row(
            children: [
              Expanded(child: CheckBoxWidget(checkedTitle: 'Pool')),
              Expanded(child: CheckBoxWidget(checkedTitle: 'Pet Friendly')),
            ],
          ),
          CheckBoxWidget(checkedTitle: 'Free Wifi'),
          SizedBox(
            height: 16,
          ),
          Text(
            'Distance from city center',
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          Slider(
            label: 'Less than $valueSlider km',
            autofocus: true,
            value: valueSlider,
            max: maxValue,
            onChanged: (value) {
              setState(() {
                valueSlider = value;
              });
            },
            inactiveColor: Colors.grey,
            thumbColor: Colors.teal,
            activeColor: Colors.teal,
          ),
          SizedBox(
            height: 16,
          ),
          Line(
            lineHeight: 1,
            lineWidth: MediaQuery.of(context).size.width * 0.8,
          ),


        ],
      ),
    );
  }
}
