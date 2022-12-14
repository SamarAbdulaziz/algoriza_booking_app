import 'package:algoriza_booking_app/feature/search/domain/entities/filter_facility.dart';
import 'package:algoriza_booking_app/feature/search/domain/entities/search_data.dart';
import 'package:algoriza_booking_app/feature/search/domain/use_cases/get_facilities_use_case.dart';
import 'package:algoriza_booking_app/feature/search/domain/use_cases/search_use_case.dart';
import 'package:bloc/bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchStates> {
  final SearchUseCase searchUseCase;
  final GetFacilitiesUseCase getFacilitiesUseCase;

  SearchCubit(this.searchUseCase, this.getFacilitiesUseCase)
      : super(SearchInitial());

  Future<void> search({
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
    emit(SearchLoadingState());
    final result = await searchUseCase(
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
    result.fold(
      (failure) => emit(
        SearchErrorState(message: failure.massage),
      ),
      (searchData) => emit(
        SearchSuccessState(searchData: searchData),
      ),
    );
  }

 // var facilitiesList = [];

  Future<void> getFacilities() async {
    emit(SearchLoadingState());
    final result = await getFacilitiesUseCase();
    result.fold(
      (failure) => emit(
        FacilitiesErrorState(message: failure.massage),
      ),
      (facilities) => emit(
        FacilitiesSuccessState(facilities: facilities),
      ),
    );
  }
}
