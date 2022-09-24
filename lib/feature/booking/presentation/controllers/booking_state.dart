part of 'booking_cubit.dart';

abstract class BookingStates {}

class BookingInitial extends BookingStates {}

class BookingLoadingState extends BookingStates {}

class BookingLoadedState extends BookingStates {
  final BookingData bookingData;

  BookingLoadedState({required this.bookingData});
}

class BookingErrorState extends BookingStates {
  final String message;

  BookingErrorState({required this.message});
}
class CreateBookingLoadingState extends BookingStates {}

class CreateBookingLoadedState extends BookingStates {
  final BookingStatus bookingStatus;

  CreateBookingLoadedState({required this.bookingStatus});
}

class CreateBookingErrorState extends BookingStates {
  final String message;

  CreateBookingErrorState({required this.message});
}
class UpdateBookingLoadingState extends BookingStates {}

class UpdateBookingSuccessState extends BookingStates {
  final BookingStatus bookingStatus;

  UpdateBookingSuccessState({required this.bookingStatus});
}

class UpdateBookingErrorState extends BookingStates {
  final String message;

  UpdateBookingErrorState({required this.message});
}
