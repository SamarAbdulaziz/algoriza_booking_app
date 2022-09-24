import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/booking/domain/entities/booking_status.dart';
import 'package:algoriza_booking_app/feature/booking/domain/repositories/base_booking_repo.dart';
import 'package:dartz/dartz.dart';

class UpdateBooking {
  final BaseBookingRepository baseBookingRepository;

  UpdateBooking(this.baseBookingRepository);

  Future<Either<Failure, BookingStatus>> call(
      {required int bookingId, required String type}) async {
    return await baseBookingRepository.updateBooking(
        bookingId: bookingId, type: type);
  }
}
