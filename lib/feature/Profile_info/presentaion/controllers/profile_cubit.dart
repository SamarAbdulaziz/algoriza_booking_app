import 'dart:io';
import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/entities/UpdateProfile.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/entities/profile-info.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/usecases/get_profile_info_use_case.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/usecases/update_profile_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

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
  File? image;
  ImagePicker picker = ImagePicker();

  Future<void> uploadImage(ImageSource source) async {
    XFile? pickedImage = await picker.pickImage(source: source,imageQuality: 50,maxHeight: 500,maxWidth: 500,);
    image = File(pickedImage!.path);
    // print(image);
     emit(ImageLoadedState());
    // image = pickedImage.path;
  }
  Future<void> updateProfileInfo({
    required String name,
    required String email,
    File? pickedImage,
  }) async {
    emit(UpdateProfileInfoLoadingState());
    Either<Failure, UpdateProfile> response = await updateProfileInfoUseCase(
      name: name,
      email: email,
      pickedImage: pickedImage,
    );
    response.fold(
      (failure) => emit(UpdateProfileInfoErrorState(message: failure.massage)),
      (updatedInfo) =>
          emit(UpdateProfileInfoSuccessState(updateProfile: updatedInfo)),
    );
  }


}
// File? file;
//
// ImagePicker picker = ImagePicker();
// var _imageName;
//
// uploadImage(ImageSource source) async {
//   var picked = await picker.pickImage(source: source);
//   if (picked != null) {
//     var rand = Random().nextInt(10000);
//     setState(() {
//       file = File(picked.path);
//       _imageName = "$rand" + basename(picked.path);
//     });
//   }
// }