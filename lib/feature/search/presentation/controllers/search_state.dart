part of 'search_cubit.dart';

abstract class SearchStates {}

class SearchInitial extends SearchStates {}

class SearchLoadingState extends SearchStates {}

class SearchSuccessState extends SearchStates {
  final SearchData searchData;

  SearchSuccessState({required this.searchData});
}

class SearchErrorState extends SearchStates {
  final String message;

  SearchErrorState({required this.message});
}
