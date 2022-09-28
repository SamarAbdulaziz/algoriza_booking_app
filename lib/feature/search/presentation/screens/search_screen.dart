import 'package:algoriza_booking_app/feature/search/presentation/controllers/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: TextButton(
        onPressed: () {
          BlocProvider.of<SearchCubit>(context).search(
           // address: 'tanta',
           facilities:[5,6,7],
          );
        },
        child: const Text(
          'Search',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      )),
    );
  }
}
