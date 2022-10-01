import 'package:algoriza_booking_app/core/services/service_locator.dart';
import 'package:algoriza_booking_app/feature/Profile_info/presentaion/components/profile_component.dart';
import 'package:algoriza_booking_app/feature/Profile_info/presentaion/controllers/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/routes/app_routes.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<ProfileCubit>(context);
    return BlocProvider<ProfileCubit>(
      create: (context) => sl<ProfileCubit>()..getProfileInfoByToken(),
      child: Container(
        color: Colors.black,
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  // cubit.getProfileInfoByToken()
                  //     .then((value) {
                  //   Navigator.pushNamed(context, Routes.profileEditScreenRoute);
                  // });
                  Navigator.pushNamed(context, Routes.profileEditScreenRoute);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlocBuilder<ProfileCubit, ProfileStates>(
                          builder: (context, state) {
                            if (state is ProfileInfoSuccessState) {
                              return Text(
                                //'Amanda',
                                state.profileInfo.data.name,
                                overflow: TextOverflow.fade,
                                maxLines: 1,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              );
                            } else {
                              return const Text('');
                            }
                          },
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'View and Edit profile',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    BlocBuilder<ProfileCubit, ProfileStates>(
                      builder: (context, state) {
                        if (state is ProfileInfoSuccessState) {
                          return
                            // cubit.image == null
                            //   ?
                            CircleAvatar(
                              radius: 50,
                              backgroundImage:
                              NetworkImage(state.profileInfo.data.image),
                              backgroundColor: Colors.transparent,
                            );
                          //       :
                          //   Container(
                          //   width: 100,
                          //   height: 100,
                          //   decoration: BoxDecoration(
                          //     shape: BoxShape.circle,
                          //     image: DecorationImage(
                          //         image: FileImage(cubit.image!),
                          //         fit: BoxFit.fill),
                          //   ),
                          // );
                        } else {
                          return const CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.transparent,
                          );
                        }
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40,),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.profileChangePassword);
                },
                child: ProfileComponent(
                    hintTitle: 'Change Password', suffixIcon: Icons.lock),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(
                      context, Routes.profileInviteFriendScreen);
                },
                child: ProfileComponent(
                    hintTitle: 'Invite Friend',
                    suffixIcon: Icons.supervisor_account_rounded),
              ),
              InkWell(
                onTap: () {},
                child: ProfileComponent(
                    hintTitle: 'Credit & Coupons',
                    suffixIcon: Icons.card_giftcard_rounded),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.helpCenter);
                },
                child: ProfileComponent(
                    hintTitle: 'Help Center', suffixIcon: Icons.help),
              ),
              InkWell(
                onTap: () {},
                child: ProfileComponent(
                    hintTitle: 'Payment', suffixIcon: Icons.payments_sharp),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.profileSetting);
                },
                child: ProfileComponent(
                    hintTitle: ' Settings', suffixIcon: Icons.settings),
              ),
            ],
          ),
        ),
      ),
    );
  }
}