import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/booking/domain/entities/booking_data.dart';
import 'package:algoriza_booking_app/feature/booking/domain/repositories/base_booking_repo.dart';
import 'package:dartz/dartz.dart';

class GetBookingUseCase {
  final BaseBookingRepository baseBookingRepository;

  GetBookingUseCase(this.baseBookingRepository);

  Future<Either<Failure, BookingData>> call(
      {required type}) async {
    return await baseBookingRepository.getBooking(type: type);
  }
}
