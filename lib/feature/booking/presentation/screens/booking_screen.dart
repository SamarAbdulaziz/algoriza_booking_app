import 'package:algoriza_booking_app/feature/booking/presentation/controllers/booking_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BookingScreen extends StatelessWidget {
  static const String routeName='Booking Screen ';
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                BlocProvider.of<BookingCubit>(context)
                    .getBooking(type: 'Completed');
              },
              child: Text('Get completed Booking'),
            ),
            TextButton(
              onPressed: () {
                BlocProvider.of<BookingCubit>(context)
                    .getBooking(type: 'Upcomming');
              },
              child: Text('Get upcomming Booking'),
            ),
            TextButton(
                onPressed: () {
                  BlocProvider.of<BookingCubit>(context)
                      .getBooking(type: 'cancelled');
                },
                child: Text('Get cancelled Booking')),
            TextButton(
                onPressed: () {
                  BlocProvider.of<BookingCubit>(context)
                      .createBooking(hotelId: 14);
                },
                child: Text('creat Booking of hotel 14')),
            TextButton(
              onPressed: () {
                BlocProvider.of<BookingCubit>(context).updateBooking(
                  bookingId: 229,
                  type: 'cancelled',
                );
              },
              child: Text(
                  'Update Booking of hotel 10 of booking id 224'),
            ),
          ],
        ),
      ),
    );
  }
}
