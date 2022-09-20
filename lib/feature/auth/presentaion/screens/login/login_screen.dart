import 'package:algoriza_booking_app/feature/auth/presentaion/screens/login/login_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName='Login Screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.arrow_back),
      ),
      body:const LoginWidget() ,
    );
  }
}
