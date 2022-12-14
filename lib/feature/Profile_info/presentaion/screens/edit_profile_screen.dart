import 'package:algoriza_booking_app/feature/Profile_info/presentaion/controllers/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/edit_profile_widget.dart';

class EditProfileScreen extends StatelessWidget {
  static const String routeName = 'Edit Profile Screen';

  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
          BlocProvider.of<ProfileCubit>(context).getProfileInfoByToken();
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      )),
      body: EditProfileWidget(),
    );
  }
}