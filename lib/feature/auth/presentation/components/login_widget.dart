import 'package:algoriza_booking_app/config/routes/app_routes.dart';
import 'package:algoriza_booking_app/feature/auth/presentation/components/login_button.dart';
import 'package:algoriza_booking_app/feature/auth/presentation/controllers/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login-text-form-field.dart';

class LoginWidget extends StatelessWidget {
  LoginWidget({Key? key}) : super(key: key);
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
                  'Login',
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
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff3b5998),
                              shape: StadiumBorder()
                            ),
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
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff00acee),
                              shape: StadiumBorder()
                          ),
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
                          ),
                        ),
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
                    controller: emailController,
                    title: 'your email',
                    hintText: 'enter your email',
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Email must not be empty';
                      }
                    }),
                const SizedBox(
                  height: 16,
                ),
                LoginTextFormField(
                  controller: passwordController,
                  title: 'password',
                  isPassword: true,
                  hintText: 'enter password',
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Password must not be empty';
                    }
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: (){

                      },
                      child: Text('Forget your password?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w400,
                      ),)
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {},
                  child: DefaultButton(
                    title: 'Login',
                    ontap: () {
                      // debugPrint(emailController.text);
                      // debugPrint(passwordController.text);
                      if (formKey.currentState!.validate()) {
                        BlocProvider.of<AuthenticationCubit>(context)
                            .loginByEmailAndPassword(
                          emailController.text,
                          passwordController.text,
                        );
                       //Todo
                        Navigator.pushNamed(context, Routes.homeScreenRoute);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}