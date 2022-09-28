import 'package:algoriza_booking_app/feature/Profile_info/presentaion/components/profile_component.dart';
import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, Routes.profileEditScreenRoute);

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Amanda',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'View and Edit profile',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        'https://image.tmdb.org/t/p/original/aJmRnDlGqO76hwDzPeg9QnyVmEk.jpg'),
                    backgroundColor: Colors.transparent,
                  )
                ],
              ),
            ),
            const SizedBox(height: 40,),
            InkWell(
              onTap:(){
                Navigator.pushNamed(context, Routes.profileChangePassword);
              },
              child: ProfileComponent(
                  hintTitle: 'Change Password', suffixIcon: Icons.lock),
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, Routes.profileInviteFriendScreen);

              },
              child: ProfileComponent(
                  hintTitle: 'Invite Friend',
                  suffixIcon: Icons.supervisor_account_rounded),
            ),
            InkWell(
              onTap: (){
              },
              child: ProfileComponent(
                  hintTitle: 'Credit & Coupons',
                  suffixIcon: Icons.card_giftcard_rounded),
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, Routes.helpCenter);
              },
              child: ProfileComponent(
                  hintTitle: 'Help Center', suffixIcon: Icons.help),
            ),
            InkWell(
              onTap: (){
              },
              child: ProfileComponent(
                  hintTitle: 'Payment', suffixIcon: Icons.payments_sharp),
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, Routes.profileSetting);
              },
              child: ProfileComponent(
                  hintTitle: ' Settings', suffixIcon: Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}