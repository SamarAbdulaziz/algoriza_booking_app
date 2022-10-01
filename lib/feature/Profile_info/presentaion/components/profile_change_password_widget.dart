import 'package:flutter/material.dart';
import '../../../auth/presentation/components/login-text-form-field.dart';
import '../../../auth/presentation/components/login_button.dart';

class ProfileChangePasswordWidget extends StatelessWidget {
  const ProfileChangePasswordWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Change Password',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                'Enter your new password and confirm your password',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 16,
              ),
              LoginTextFormField(
                  title: 'New Password',
                  hintText: 'enter new password',
                  validator: (String? value) {
                    // if (value!.isEmpty) {
                    //   return 'Email must not be empty';
                    // }
                  }),
              const SizedBox(
                height: 16,
              ),
              LoginTextFormField(
                title: 'Confrim password',
                hintText: 'enter confirm password',
                validator: (String? value) {
                  // if (value!.isEmpty) {
                  //   return 'Password must not be empty';
                  // }
                },
              ),
              const SizedBox(
                height: 16,
              ),
              DefaultButton(
                title: 'Apply',
                ontap: () {

                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
