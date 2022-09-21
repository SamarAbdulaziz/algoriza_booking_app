import 'package:algoriza_booking_app/config/routes/app_routes.dart';
import 'package:algoriza_booking_app/feature/auth/presentaion/components/login_button.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            DefaultButton(
              title: 'Get Started',
              ontap: () {
                Navigator.pushNamed(context, Routes.onBoardingRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
