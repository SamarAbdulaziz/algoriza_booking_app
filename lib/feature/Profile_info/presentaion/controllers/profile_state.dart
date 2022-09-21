part of 'profile_cubit.dart';
abstract class ProfileStates {}

class ProfileInitialState extends ProfileStates {}


class ProfileInfoLoadingState extends ProfileStates {}

class ProfileInfoSuccessState extends ProfileStates {
  final ProfileInfoModel profileInfoModel;

  ProfileInfoSuccessState({required this.profileInfoModel});
}

class ProfileInfoErrorState extends ProfileStates {
  final String message;

  ProfileInfoErrorState({required this.message});
}