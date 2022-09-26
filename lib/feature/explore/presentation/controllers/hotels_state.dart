part of 'hotels_cubit.dart';

@immutable
abstract class HotelsStates {}

class HotelsInitial extends HotelsStates {}

class HotelsLoadingState extends HotelsStates {}

class HotelsLoadedState extends HotelsStates {
  final Hotels hotels;

  HotelsLoadedState({required this.hotels});
}

class HotelsErrorState extends HotelsStates {
  final String message;

  HotelsErrorState({required this.message});
}

class navigationbarstate extends HotelsStates {}

