import 'package:algoriza_booking_app/feature/auth/presentaion/components/text_form_field_profile.dart';
import 'package:algoriza_booking_app/feature/auth/presentaion/screens/edit_profile_screen.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
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
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, EditProfileScreen.routeName);
                      },
                      child: Text(
                        'View and Edit profile',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                        ),
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
            const SizedBox(
              height: 20,
            ),
            TextFormFieldProfile(
                hintTitle: 'Change Password', suffixIcon: Icons.lock),
            TextFormFieldProfile(
                hintTitle: 'Invite Friend',
                suffixIcon: Icons.supervisor_account_rounded),
            TextFormFieldProfile(
                hintTitle: 'Change Password',
                suffixIcon: Icons.supervisor_account_rounded),
            TextFormFieldProfile(
                hintTitle: 'Help Center', suffixIcon: Icons.help),
            TextFormFieldProfile(
                hintTitle: 'Payment', suffixIcon: Icons.payments_sharp),
            TextFormFieldProfile(
                hintTitle: ' Settings', suffixIcon: Icons.settings),
          ],
        ),
      ),
    );
  }
}
