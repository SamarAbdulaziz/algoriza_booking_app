import 'package:flutter/material.dart';

import '../components/profile_change_password_widget.dart';

class ProfileChangePassword extends StatelessWidget {
  const ProfileChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),),
      body: ProfileChangePasswordWidget(),
    );
  }
}
