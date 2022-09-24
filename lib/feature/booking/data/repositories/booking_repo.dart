import 'package:algoriza_booking_app/core/errors/exceptions.dart';
import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/core/utiles/local_data_source.dart';
import 'package:algoriza_booking_app/feature/booking/data/data_sources/Remote_booking_data_source.dart';
import 'package:algoriza_booking_app/feature/booking/domain/entities/booking_data.dart';
import 'package:algoriza_booking_app/feature/booking/domain/entities/booking_status.dart';
import 'package:algoriza_booking_app/feature/booking/domain/repositories/base_booking_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class BookingRepository extends BaseBookingRepository {
  final BaseBookingRemoteDataSource baseBookingRemoteDataSource;

  BookingRepository(this.baseBookingRemoteDataSource);

  var token = CacheData.getData(key: 'apiToken');

  @override
  Future<Either<Failure, BookingData>> getBooking(
      {required String type}) async {
    final result =
        await baseBookingRemoteDataSource.getBooking(token: token, type: type);
    try {
      debugPrint(result.statusType);
      debugPrint(result.generalBookingData.bookedHotelsList!.length.toString());

      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    }
  }

  @override
  Future<Either<Failure, BookingStatus>> createBooking(
      {required int hotelId}) async {
    final result = await baseBookingRemoteDataSource.createBooking(
        token: token, hotelId: hotelId);
    try {
      debugPrint(result.type);
      debugPrint(result.title.arMessage);
      debugPrint(result.title.enMessage);

      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    }
  }

  @override
  Future<Either<Failure, BookingStatus>> updateBooking(
      {required int bookingId, required String type}) async {
    final result = await baseBookingRemoteDataSource.updateBooking(
        bookingId: bookingId, type: type);
    try {
      debugPrint(result.type);
      debugPrint(result.title.arMessage);
      debugPrint(result.title.enMessage);

      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    }
  }
}
