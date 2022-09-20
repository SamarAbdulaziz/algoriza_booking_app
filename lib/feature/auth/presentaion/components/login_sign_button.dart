import 'package:flutter/material.dart';

class LoginSignButton extends StatelessWidget {
  String title;

  LoginSignButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.teal.shade200,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
          child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 15),
      )),
    );
  }
}
