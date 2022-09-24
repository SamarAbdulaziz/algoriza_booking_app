import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/booking/domain/entities/booking_status.dart';
import 'package:algoriza_booking_app/feature/booking/domain/repositories/base_booking_repo.dart';
import 'package:dartz/dartz.dart';

class CreateBookingUseCase {
  final BaseBookingRepository baseBookingRepository;

  CreateBookingUseCase(this.baseBookingRepository);

  Future<Either<Failure, BookingStatus>> call(
      {required int hotelId}) async {
    return await baseBookingRepository.createBooking(hotelId: hotelId);
  }
}
