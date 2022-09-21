import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/auth/domain/entities/auth.dart';
import 'package:algoriza_booking_app/feature/auth/domain/usecases/get_profile_info.dart';
import 'package:algoriza_booking_app/feature/auth/domain/usecases/login_use_case.dart';
import 'package:algoriza_booking_app/feature/auth/domain/usecases/register_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationStates> {
  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;
  final GetProfileInfoUseCase getProfileInfoUseCase;

  AuthenticationCubit(
      this.loginUseCase, this.registerUseCase, this.getProfileInfoUseCase)
      : super(AuthenticationInitialState());

  Future<void> loginByEmailAndPassword(String email, String password) async {
    emit(LoginLoadingState());
    Either<Failure, AuthenticationInfo> response =
        await loginUseCase(email: email, password: password);
    response.fold(
        (failure) => emit(LoginErrorState(message: failure.massage)),
        (authenticationInfo) =>
            emit(LoginSuccessState(authenticationInfo: authenticationInfo)));
  }

  Future<void> registerByEmailAndPassword(String name, String email,
      String password, String passwordConfirmation) async {
    emit(RegisterLoadingState());
    Either<Failure, AuthenticationInfo> response = await registerUseCase(
        name: name,
        email: email,
        password: password,
        passwordConfirmation: passwordConfirmation);
    response.fold(
        (failure) => emit(RegisterErrorState(message: failure.massage)),
        (authenticationInfo) =>
            emit(RegisterSuccessState(authenticationInfo: authenticationInfo)));
  }

  Future<void> getProfileInfoByToken(String apiToken) async {
    emit(ProfileInfoLoadingState());
    Either<Failure, AuthenticationInfo> response =
        await getProfileInfoUseCase(apiToken: apiToken);
    response.fold(
        (failure) => emit(ProfileInfoErrorState(message: failure.massage)),
        (authenticationInfo) => emit(
            ProfileInfoSuccessState(authenticationInfo: authenticationInfo)));
  }
}
/* Future<void> getWeatherByCityName(String cityName) async {
    emit(
        NewWeatherLoadingState()); //to let the circular progress indecator show up
    Either<Failure, NewWeather> response =
        await getWeatherByCityNameUseCaseNew(cityName);
    response.fold(
        (failure) => emit(NewWeatherErrorState(errorMessage: failure.massage)),
        (newWeather) => emit(NewWeatherLoadedState(newWeather: newWeather)));
  }*/