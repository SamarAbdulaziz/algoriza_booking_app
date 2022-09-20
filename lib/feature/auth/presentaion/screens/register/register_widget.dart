import 'package:algoriza_booking_app/feature/auth/presentaion/components/login_sign_button.dart';
import 'package:algoriza_booking_app/feature/auth/presentaion/components/login_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({Key? key}) : super(key: key);

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
                'Sign Up',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ))),
                          child: Row(
                            children: const [
                              IconButton(
                                  icon: FaIcon(
                                    FontAwesomeIcons.facebook,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                  onPressed: null),
                              Text(
                                'Facebook',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ))),
                          child: Row(
                            children: const [
                              IconButton(
                                  icon: FaIcon(
                                    FontAwesomeIcons.twitter,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                  onPressed: null),
                              Text(
                                'Twitter',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Center(
                child: Text(
                  'or login in with email',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              LoginTextFormField(
                title: 'First name',
                hintText: 'Enter first name',
              ),
              const SizedBox(
                height: 16,
              ),
              LoginTextFormField(
                title: 'Last name',
                hintText: 'Enter last name',
              ),
              const SizedBox(
                height: 16,
              ),
              LoginTextFormField(
                title: 'your email',
                hintText: 'enter your email',
              ),
              const SizedBox(
                height: 16,
              ),
              LoginTextFormField(
                title: 'password',
                hintText: 'enter password',
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(onTap: () {}, child: LoginSignButton(title: 'Sign up')),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'By signing up, you agreed with our terms of',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'services and privacy policy',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have account?Log in?',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.teal.shade200,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
