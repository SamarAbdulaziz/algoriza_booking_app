import 'package:algoriza_booking_app/feature/auth/presentation/components/login_button.dart';
import 'package:algoriza_booking_app/feature/auth/presentation/controllers/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../config/routes/app_routes.dart';
import 'login-text-form-field.dart';


class RegisterWidget extends StatelessWidget {
  RegisterWidget({Key? key}) : super(key: key);
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
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
                const SizedBox(
                  height: 6,
                ),
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
                  controller: firstNameController,
                  title: 'First name',
                  hintText: 'Enter first name',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'First name must not be empty';
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                LoginTextFormField(
                  controller: lastNameController,
                  title: 'Last name',
                  hintText: 'Enter last name',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Last name must not be empty';
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                LoginTextFormField(
                  controller: emailController,
                  title: 'your email',
                  hintText: 'enter your email',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email must not be empty';
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                LoginTextFormField(
                  controller: passwordController,
                  title: 'password',
                  hintText: 'enter password',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password must not be empty';
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: DefaultButton(
                    title: 'Sign up',
                    ontap: () {
                      if (formKey.currentState!.validate()) {
                        BlocProvider.of<AuthenticationCubit>(context)
                            .registerByEmailAndPassword(
                                '${firstNameController.text} ${lastNameController.text}',
                                emailController.text,
                                passwordController.text,
                                passwordController.text);
                      }
                    },
                  ),
                ),
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
                      'Already have account?',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                      child:Text('Login',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.teal.shade200,
                          fontWeight: FontWeight.bold,),),
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.loginScreenRoute);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}