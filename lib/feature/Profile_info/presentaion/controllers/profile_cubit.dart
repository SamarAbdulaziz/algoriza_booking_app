import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/auth/data/models/profile_info_model.dart';
import 'package:algoriza_booking_app/feature/auth/domain/usecases/get_profile_info.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  final GetProfileInfoUseCase getProfileInfoUseCase;

  ProfileCubit(this.getProfileInfoUseCase) : super(ProfileInitialState());

  //String apiToken
  Future<void> getProfileInfoByToken() async {
    emit(ProfileInfoLoadingState());
    Either<Failure, ProfileInfoModel> response =
        await getProfileInfoUseCase(); //apiToken: apiToken
    response.fold(
      (failure) => emit(ProfileInfoErrorState(message: failure.massage)),
      (profileInfoModel) => emit(
        ProfileInfoSuccessState(
          profileInfoModel: profileInfoModel,
        ),
      ),
    );
  }
}