import 'package:flutter/material.dart';

class LoginTextFormField extends StatelessWidget {
  String title;
  String hintText;
  LoginTextFormField({Key? key, required this.title, required this.hintText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(height: 4,),
        TextFormField(
          autocorrect: false,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle:  TextStyle(color:Colors.grey.shade500,),
            fillColor: Colors.grey.shade800,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: Colors.transparent)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: Colors.transparent)),
            filled: true,
            contentPadding:
                const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
          ),
        ),
      ],
    );
  }
}
