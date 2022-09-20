import 'package:flutter/material.dart';

import '../components/register-widget.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName='Register Screen';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.arrow_back),
      ),
      body:const RegisterWidget() ,
    );
  }
}
