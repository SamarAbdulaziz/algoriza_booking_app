part of 'auth_cubit.dart';
abstract class AuthenticationStates {}

class AuthenticationInitialState extends AuthenticationStates {}

class LoginLoadingState extends AuthenticationStates {}

class LoginSuccessState extends AuthenticationStates {
  final AuthenticationInfo authenticationInfo;

  LoginSuccessState({required this.authenticationInfo});
}

class LoginErrorState extends AuthenticationStates {
  final String message;

  LoginErrorState({required this.message});
}

class RegisterLoadingState extends AuthenticationStates {}

class RegisterSuccessState extends AuthenticationStates {
  final AuthenticationInfo authenticationInfo;

  RegisterSuccessState({required this.authenticationInfo});
}

class RegisterErrorState extends AuthenticationStates {
  final String message;

  RegisterErrorState({required this.message});
}

class ProfileInfoLoadingState extends AuthenticationStates {}

class ProfileInfoSuccessState extends AuthenticationStates {
  final ProfileInfoModel profileInfoModel;

  ProfileInfoSuccessState({required this.profileInfoModel});
}

class ProfileInfoErrorState extends AuthenticationStates {
  final String message;

  ProfileInfoErrorState({required this.message});
}