import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/search/domain/entities/filter_facilities.dart';
import 'package:algoriza_booking_app/feature/search/domain/entities/facility.dart';
import 'package:algoriza_booking_app/feature/search/domain/repositories/base_search_repository.dart';
import 'package:dartz/dartz.dart';

class GetFacilitiesUseCase {
  final BaseSearchRepository baseSearchRepository;

  GetFacilitiesUseCase(this.baseSearchRepository);

  Future<Either<Failure, FilterFacilities>> call() async {
    return await baseSearchRepository.getFacilities();
  }
}
