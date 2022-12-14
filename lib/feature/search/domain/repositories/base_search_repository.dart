import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/search/domain/entities/search_data.dart';
import 'package:dartz/dartz.dart';

import '../../data/models/filter_facilities_model.dart';

abstract class BaseSearchRepository {
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
  });

  Future<Either<Failure, FacilitiesModel>> getFacilities();
}
