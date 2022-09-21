import 'package:algoriza_booking_app/feature/Profile_info/presentaion/controllers/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = 'Profile Screen';

  const ProfileScreen({Key? key}) : super(key: key);

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
        ),
      ),
      body: Center(
          child: Container(
        child: TextButton(
          onPressed: () {
            BlocProvider.of<ProfileCubit>(context).getProfileInfoByToken();
          },
          child: Text(
            ' Get Profile info',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      )),
    );
  }
}
