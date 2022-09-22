import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/explore/domain/entities/hotels.dart';
import 'package:algoriza_booking_app/feature/explore/domain/use_cases/explore_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

part 'hotels_state.dart';

class HotelsCubit extends Cubit<HotelsStates> {
  final ExploreHotelsUseCase exploreHotelsUseCase;

  HotelsCubit(this.exploreHotelsUseCase) : super(HotelsInitial());

  Future<void> exploreHotels({int? count, int? page}) async {
    emit(HotelsLoadingState());

    Either<Failure, Hotels> response =
        await exploreHotelsUseCase(count: count, page: page);
    response.fold((failure) => emit(HotelsErrorState(message: failure.massage)),
        (hotels) => emit(HotelsLoadedState(hotels: hotels)));
  }
}
