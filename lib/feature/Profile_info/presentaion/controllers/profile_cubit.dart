
import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/entities/UpdateProfile.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/entities/profile-info.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/usecases/get_profile_info_use_case.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/usecases/update_profile_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  final GetProfileInfoUseCase getProfileInfoUseCase;
  final UpdateProfileInfoUseCase updateProfileInfoUseCase;

  ProfileCubit(this.getProfileInfoUseCase, this.updateProfileInfoUseCase)
      : super(ProfileInitialState());

  //String apiToken
  Future<void> getProfileInfoByToken() async {
    emit(ProfileInfoLoadingState());
    Either<Failure, ProfileInfo> response =
        await getProfileInfoUseCase(); //apiToken: apiToken
    response.fold(
      (failure) => emit(ProfileInfoErrorState(message: failure.massage)),
      (profileInfo) => emit(
        ProfileInfoSuccessState(
          profileInfo: profileInfo,
        ),
      ),
    );
  }

  Future<void> updateProfileInfo({
    required String name,
    required String email,
    String? image,
  }) async {
    emit(UpdateProfileInfoLoadingState());
    Either<Failure, UpdateProfile> response = await updateProfileInfoUseCase(
      name: name,
      email: email,
      image: image,
    );
    response.fold(
      (failure) => emit(UpdateProfileInfoErrorState(message: failure.massage)),
      (updatedInfo) =>
          emit(UpdateProfileInfoSuccessState(updateProfile: updatedInfo)),
    );
  }
}