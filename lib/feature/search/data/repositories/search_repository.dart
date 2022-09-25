import 'package:algoriza_booking_app/core/errors/exceptions.dart';
import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/search/data/data_sources/search_remote_data_source.dart';
import 'package:algoriza_booking_app/feature/search/domain/entities/search_data.dart';
import 'package:algoriza_booking_app/feature/search/domain/repositories/base_search_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class SearchRepository extends BaseSearchRepository {
  final BaseSearchRemoteDataSource baseSearchRemoteDataSource;

  SearchRepository(this.baseSearchRemoteDataSource);

  @override
  Future<Either<Failure, SearchData>> search({
    String? name,
    String? address,
    int? maxPrice,
    int? minPrice,
    int? facilities,
    double? lat,
    double? long,
    double? distance,
    int? count,
    int? page,
  }) async {
    final result = await baseSearchRemoteDataSource.search(
      name: name,
      address: address,
      maxPrice: maxPrice,
      minPrice: minPrice,
      facilities: facilities,
      lat: lat,
      long: long,
      distance: distance,
      count: count,
      page: page,
    );
    try {
      debugPrint(result.statusType);
      debugPrint(result.generalSearchData.hotelsList.toString());
      debugPrint(result.generalSearchData.hotelsList.length.toString());
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    }
  }
}
//*
//
//  final result =
//         await baseBookingRemoteDataSource.getBooking(token: token, type: type);
//     try {
//       debugPrint(result.statusType);
//       debugPrint(result.generalBookingData.bookedHotelsList!.length.toString());
//
//       return Right(result);
//     } on ServerException catch (failure) {
//       return Left(ServerFailure(failure.message));
//     }
// **/
