import 'package:algoriza_booking_app/feature/explore/presentation/screens/filtter_widget.dart';
import 'package:flutter/material.dart';

class FiltterScreen extends StatelessWidget {
  const FiltterScreen({Key? key}) : super(key: key);
  static const String routeName='Filtter Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(
          Icons.close,
          color: Colors.white,
        ),
      ),
      body:  FiltterWidget(),

    );
  }
}
