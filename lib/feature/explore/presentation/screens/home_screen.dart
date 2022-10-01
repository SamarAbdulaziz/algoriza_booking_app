import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controllers/hotels_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String routeName = 'home Screen';


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HotelsCubit, HotelsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = BlocProvider.of<HotelsCubit>(context);
        return Scaffold(
          body: cubit.screenNavigationbar[cubit.currentindexnavbar],
          bottomNavigationBar: BottomNavigationBar(
            iconSize: 26,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.teal,
            unselectedItemColor: Colors.grey,
            currentIndex: cubit.currentindexnavbar,
            onTap: (index) {
              cubit.changebottomnavifationbar(index);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Trips'),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined), label: 'Profile'),


            ],
          ),
        );
      },
    );
  }
}
