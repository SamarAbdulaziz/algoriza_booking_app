import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/booking/domain/entities/booking_data.dart';
import 'package:algoriza_booking_app/feature/booking/domain/entities/booking_status.dart';
import 'package:dartz/dartz.dart';

abstract class BaseBookingRepository {
  Future<Either<Failure, BookingData>> getBooking(
      {required String type});

  Future<Either<Failure, BookingStatus>> createBooking(
      {required int hotelId});

  Future<Either<Failure, BookingStatus>> updateBooking(
      {required int bookingId, required String type});
}
