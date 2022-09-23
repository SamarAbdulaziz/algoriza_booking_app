import 'package:algoriza_booking_app/core/errors/exceptions.dart';
import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/explore/data/data_sources/remote_hotels_data_source.dart';
import 'package:algoriza_booking_app/feature/explore/domain/entities/hotels.dart';
import 'package:algoriza_booking_app/feature/explore/domain/repositories/explore_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class HotelsRepository extends BaseHotelsRepository {
  final BaseRemoteHotelsDataSource baseHotelRemoteDataSource;

  HotelsRepository(this.baseHotelRemoteDataSource);

  @override
  Future<Either<Failure, Hotels>> exploreHotels({int? count, int? page}) async {
    final result = await baseHotelRemoteDataSource.exploreHotels();
    try {
      debugPrint(result.statusType);
      debugPrint(result.generalData!.hotelsList.toString());
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    }
  }
}
