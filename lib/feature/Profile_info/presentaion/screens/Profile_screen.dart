import 'package:algoriza_booking_app/core/services/service_locator.dart';
import 'package:algoriza_booking_app/feature/Profile_info/presentaion/components/profile_widget.dart';
import 'package:algoriza_booking_app/feature/Profile_info/presentaion/controllers/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = 'Profile Screen';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProfileCubit>()..getProfileInfoByToken(),
      child: Scaffold(
        body: SafeArea(
          child: const ProfileWidget(),
        ),
      ),
    );
  }
}