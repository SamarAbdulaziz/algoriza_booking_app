import 'package:flutter/material.dart';

class ProfileComponent extends StatelessWidget {
  String hintTitle;
  IconData suffixIcon;

  ProfileComponent({
    required this.hintTitle,
    required this.suffixIcon,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              hintTitle,
              style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            Icon(
              suffixIcon,
              color: Colors.grey,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 1,
          decoration: BoxDecoration(color: Colors.grey.shade700),
        ),
        SizedBox(
          height: 20,
        ),
        const SizedBox(
          height: 14,
        ),
      ],
    );
  }
}
