import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {

  String checkedTitle;
  CheckBoxWidget({required this.checkedTitle});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.black,
      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.08,
      child: CheckboxListTile(
        dense: true,
        selectedTileColor: Colors.white,
        checkColor: Colors.teal,
        side: BorderSide(color: Colors.grey),
        title: Text(widget.checkedTitle),
        tileColor: Colors.grey,
        value: checkedValue,
        activeColor:  Colors.white,

        selected: true,
        onChanged: (newValue) {
          setState(() {
            checkedValue = newValue!;
          });
        },
        controlAffinity:
            ListTileControlAffinity.leading, //  <-- leading Checkbox
      ),
    );
  }
}
