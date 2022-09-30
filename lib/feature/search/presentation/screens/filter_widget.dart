import 'package:algoriza_booking_app/feature/auth/presentation/components/login_button.dart';
import 'package:algoriza_booking_app/feature/search/presentation/componnet/check_box_widget.dart';
import 'package:algoriza_booking_app/feature/search/presentation/componnet/line.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FilterWidget extends StatefulWidget {
  // FilterWidget({Key? key}) : super(key: key);

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  double valueSlider = 0;
  SfRangeValues valuesSlid = const SfRangeValues(0.0, 100.0);
  double minValue = 0;
  double maxValue = 100;
  double lowerValue = 0.0;
  double upperValue = 100.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Filter',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'price (for 1 night)',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 20,),
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
          DefaultButton(title: 'Apply', ontap: () {})
        ],
      ),
    );
  }
}
