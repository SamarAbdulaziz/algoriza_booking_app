import 'package:algoriza_booking_app/feature/auth/presentaion/screens/profile_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName='Profile Screen';
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(child: ProfileWidget()),
    );
  }
}
