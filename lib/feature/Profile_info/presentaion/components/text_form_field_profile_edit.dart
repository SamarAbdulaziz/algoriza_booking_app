import 'package:flutter/material.dart';

class TextFormFieldProfileEdit extends StatelessWidget {
 // final TextEditingController controller;
  final String hintTitle;

  //final String suffixTitle;
  final String initialValue;

  const TextFormFieldProfileEdit({
    required this.hintTitle,
    //required this.suffixTitle,
    //required this.controller,
    required this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          // controller: controller,
          initialValue: initialValue,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: hintTitle,
            hintStyle: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 16,
                fontWeight: FontWeight.w500),
            // suffixIcon: Padding(
            //   padding: const EdgeInsets.only(top: 14.0),
            //   child: Text(
            //     suffixTitle,
            //     style: TextStyle(
            //         color: Colors.grey.shade300,
            //         fontSize: 16,
            //         fontWeight: FontWeight.w500),
            //   ),
            // ),
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