import 'package:flutter/material.dart';

import '../components/login_widget.dart';

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