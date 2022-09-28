import 'package:algoriza_booking_app/core/errors/exceptions.dart';
import 'package:algoriza_booking_app/core/utiles/constants.dart';
import 'package:algoriza_booking_app/feature/search/data/models/filter_facilities_model.dart';
import 'package:algoriza_booking_app/feature/search/data/models/search_data_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class BaseSearchRemoteDataSource {
  Future<SearchDataModel> search({
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
  });

  Future<FacilitiesModel> getFacilities();
}

class SearchRemoteDataSource extends BaseSearchRemoteDataSource {
  var dio = Dio(BaseOptions(
    baseUrl: AppConstants.baseUrl,
    receiveDataWhenStatusError: true,
    connectTimeout: 5000,
  ));

  @override
  Future<SearchDataModel> search({
    String? name,
    String? address,
    int? maxPrice,
    int? minPrice,
    List<int?>? facilities,
    double? lat,
    double? long,
    double? distance,
    int? count,
    int? page,
  }) async {
    final response = await dio.get(AppConstants.searchPath, queryParameters: {
      'name': name ,
      'address': address ,
      'max_price': maxPrice ,
      'min_price': minPrice ,
      'facilities[0]': facilities![0] ,
      'facilities[1]': facilities[1] ,
      'facilities[2]': facilities[2] ,
      'facilities[3]': facilities[3] ,
      'latitude': lat ,
      'longitude': long ,
      'distance': distance ,
      'count': count ,
      'page': page ,
    });
    if (response.statusCode == 200) {
      debugPrint(response.toString());
      return SearchDataModel.fromJson(response.data);
    } else {
      throw ServerException('Server Exception');
    }
  }

  @override
  Future<FacilitiesModel> getFacilities() async {
    final response = await dio.get(AppConstants.getFacilitiesPath);
    if (response.statusCode == 200) {
      return FacilitiesModel.fromJson(response.data);

    } else {
      throw ServerException('Server Exception');
    }
  }
}
