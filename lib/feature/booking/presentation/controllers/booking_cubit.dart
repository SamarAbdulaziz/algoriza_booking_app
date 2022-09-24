import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/booking/domain/entities/booking_data.dart';
import 'package:algoriza_booking_app/feature/booking/domain/entities/booking_status.dart';
import 'package:algoriza_booking_app/feature/booking/domain/use_cases/create_booking_use_case.dart';
import 'package:algoriza_booking_app/feature/booking/domain/use_cases/get_booking_use_case.dart';
import 'package:algoriza_booking_app/feature/booking/domain/use_cases/update_booking_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

part 'booking_state.dart';

class BookingCubit extends Cubit<BookingStates> {
  final GetBookingUseCase getBookingUseCase;
  final CreateBookingUseCase createBookingUseCase;
  final UpdateBookingUseCase updateBookingUseCase;

  BookingCubit(this.getBookingUseCase, this.createBookingUseCase,
      this.updateBookingUseCase)
      : super(BookingInitial());

  Future<void> getBooking({required String type}) async {
    emit(BookingLoadingState());
    Either<Failure, BookingData> response = await getBookingUseCase(type: type);
    response.fold(
        (failure) => emit(BookingErrorState(message: failure.massage)),
        (bookingData) => emit(BookingLoadedState(bookingData: bookingData)));
  }

  Future<void> createBooking({
    required int hotelId,
  }) async {
    emit(CreateBookingLoadingState());

    Either<Failure, BookingStatus> response =
        await createBookingUseCase(hotelId: hotelId);
    response.fold(
        (failure) => emit(CreateBookingErrorState(message: failure.massage)),
        (bookingStatus) =>
            emit(CreateBookingLoadedState(bookingStatus: bookingStatus)));
  }

  Future<void> updateBooking({
    required int bookingId,
    required String type,
  }) async {
    emit(UpdateBookingLoadingState());
    Either<Failure, BookingStatus> response =
        await updateBookingUseCase(bookingId: bookingId, type: type);
    response.fold(
        (failure) => emit(UpdateBookingErrorState(message: failure.massage)),
        (bookingStatus) =>
            emit(UpdateBookingSuccessState(bookingStatus: bookingStatus)));
  }
}
