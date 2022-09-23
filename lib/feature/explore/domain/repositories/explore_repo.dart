
import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/explore/domain/entities/hotels.dart';
import 'package:dartz/dartz.dart';

abstract class BaseHotelsRepository {
  Future<Either<Failure, Hotels>> exploreHotels({
     int? count,
     int? page,
  });


}
