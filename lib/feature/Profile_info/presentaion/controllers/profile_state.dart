part of 'profile_cubit.dart';
abstract class ProfileStates {}

class ProfileInitialState extends ProfileStates {}


class ProfileInfoLoadingState extends ProfileStates {}

class ProfileInfoSuccessState extends ProfileStates {
  final ProfileInfo profileInfo;

  ProfileInfoSuccessState({required this.profileInfo});
}

class ProfileInfoErrorState extends ProfileStates {
  final String message;

  ProfileInfoErrorState({required this.message});
}
class UpdateProfileInfoLoadingState extends ProfileStates {}

class  UpdateProfileInfoSuccessState extends ProfileStates {
  final  UpdateProfile updateProfile;

  UpdateProfileInfoSuccessState({required this.updateProfile});
}

class  UpdateProfileInfoErrorState extends ProfileStates {
  final String message;

  UpdateProfileInfoErrorState({required this.message});
}
class ImageLoadedState extends ProfileStates{}