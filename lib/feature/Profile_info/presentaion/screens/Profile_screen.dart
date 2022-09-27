import 'package:flutter/material.dart';
import '../components/profile_widget.dart';
class ProfileScreen extends StatelessWidget {
  static const String routeName='Profile Screen';
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(child: ProfileWidget()),
    );
  }
}