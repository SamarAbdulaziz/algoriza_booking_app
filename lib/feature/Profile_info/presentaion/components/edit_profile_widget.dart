import 'package:algoriza_booking_app/feature/Profile_info/presentaion/components/text_form_field_profile_edit.dart';
import 'package:flutter/material.dart';

class EditProfileWidget extends StatelessWidget {
  const EditProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Edit Profile',
              style: TextStyle(
                  color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700),
            ),
            Center(
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://image.tmdb.org/t/p/original/aJmRnDlGqO76hwDzPeg9QnyVmEk.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                  CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.teal.shade200,
                      child: const Icon(
                        Icons.camera_alt,
                        size: 17,
                        color: Colors.black,
                      ))
                ],
              ),
            ),
            TextFormFieldProfileEdit(
                hintTitle:  'UserName', suffixTitle: 'Amanda Jane'),
            TextFormFieldProfileEdit(
                hintTitle:  'Email', suffixTitle: 'amanda@gmail.com '),
            TextFormFieldProfileEdit(
                hintTitle:  'Phone', suffixTitle: '+66 688683976'),
            TextFormFieldProfileEdit(
                hintTitle:  'Date of Birth', suffixTitle: '20, Aug, 1998'),
            TextFormFieldProfileEdit(
                hintTitle:  'Address', suffixTitle: '123 Royal Street,New York'),
          ],
        ),
      ),
    );
  }
}