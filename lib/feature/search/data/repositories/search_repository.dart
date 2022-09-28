import 'package:algoriza_booking_app/core/errors/exceptions.dart';
import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/search/data/data_sources/search_remote_data_source.dart';
import 'package:algoriza_booking_app/feature/search/data/models/filter_facilities_model.dart';
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
    List<int>? facilities,
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


  @override
  Future<Either<Failure, FacilitiesModel>> getFacilities() async {
    final facilitiesList = await baseSearchRemoteDataSource.getFacilities();
    try {
      return Right(facilitiesList);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    }
  }
}
