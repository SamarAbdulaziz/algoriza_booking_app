import 'package:flutter/material.dart';

class TextFormFieldProfileEdit extends StatelessWidget {
  String hintTitle;
  String suffixTitle;

   TextFormFieldProfileEdit({required this.hintTitle,required this.suffixTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: hintTitle,
            hintStyle: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 16,
                fontWeight: FontWeight.w500),
            suffixIcon:Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: Text(suffixTitle,style:TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 16,
                  fontWeight: FontWeight.w500) ,),
            ),
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
