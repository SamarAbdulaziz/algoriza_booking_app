import 'package:flutter/material.dart';

class TextFormFieldProfile extends StatelessWidget {
  String hintTitle;
  IconData suffixIcon;
  TextFormFieldProfile({required this.hintTitle,required this.suffixIcon});


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: hintTitle,
            hintStyle: TextStyle(
                color: Colors.grey.shade300,
                fontSize: 16,
                fontWeight: FontWeight.w500),
            suffixIcon:Icon(suffixIcon,color: Colors.grey,),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade700),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(height: 14,),
      ],
    );
  }
}