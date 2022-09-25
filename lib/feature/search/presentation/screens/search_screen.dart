import 'package:algoriza_booking_app/feature/search/presentation/controllers/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: TextButton(
        onPressed: () {
          BlocProvider.of<SearchCubit>(context).search();
        },
        child: Text(
          'Search',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      )
          // child: TextFormField(
          //     decoration: InputDecoration(
          //         icon: Icon(
          //       Icons.search,
          //       color: Colors.red,
          //     )),
          //     controller: controller,
          //     onFieldSubmitted: (value) async {
          //       await BlocProvider.of<SearchCubit>(context).search(name: '5000');
          //     }),
          ),
    );
  }
}
