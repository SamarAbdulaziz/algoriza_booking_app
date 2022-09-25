import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/search/domain/entities/search_data.dart';
import 'package:algoriza_booking_app/feature/search/domain/repositories/base_search_repository.dart';
import 'package:dartz/dartz.dart';

class SearchUseCase {
  final BaseSearchRepository baseSearchRepository;

  SearchUseCase(this.baseSearchRepository);

  Future<Either<Failure, SearchData>>call(
      {
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
  }
  ) async {
    return await baseSearchRepository.search(
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
  }
}
