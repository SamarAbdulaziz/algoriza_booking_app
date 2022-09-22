import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/explore/domain/entities/hotels.dart';
import 'package:algoriza_booking_app/feature/explore/domain/repositories/explore_repo.dart';
import 'package:dartz/dartz.dart';

class ExploreHotelsUseCase {
  final BaseHotelsRepository baseHotelsRepository;

  ExploreHotelsUseCase(this.baseHotelsRepository);

  Future<Either<Failure, Hotels>> call({
    int? count,
    int? page,
  }) async {
    return await baseHotelsRepository.exploreHotels(
      count: count,
      page: page,
    );
  }
}
