import 'package:algoriza_booking_app/feature/auth/presentaion/screens/edit_profile_widget.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  static const String routeName = 'Edit Profile Screen';

  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      body: const EditProfileWidget(),
    );
  }
}
