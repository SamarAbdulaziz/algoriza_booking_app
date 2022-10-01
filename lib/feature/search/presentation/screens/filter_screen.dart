// import 'package:algoriza_booking_app/core/services/service_locator.dart';
// import 'package:algoriza_booking_app/feature/search/presentation/controllers/search_cubit.dart';
// import 'package:algoriza_booking_app/feature/search/presentation/screens/filter_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class FilterScreen extends StatelessWidget {
//   const FilterScreen({Key? key}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<SearchCubit>(
//       create: (context) => sl<SearchCubit>(),
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(
//               Icons.close,
//               color: Colors.white,
//             ),
//           ),
//         ),
//         body: FilterWidget(),
//       ),
//     );
//   }
// }
