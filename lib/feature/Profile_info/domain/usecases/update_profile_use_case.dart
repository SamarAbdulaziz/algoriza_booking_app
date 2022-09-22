import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/entities/UpdateProfile.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/repository/base_profile_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateProfileInfoUseCase {
  //extends BaseUseCase<Authentication,String>
  final BaseProfileRepository baseProfileRepository;

  UpdateProfileInfoUseCase(this.baseProfileRepository);

  Future<Either<Failure, UpdateProfile>> call({
    required String name,
    required String email,
    String? image,
  }) async {
    //    required String apiToken,
    return await baseProfileRepository.updateProfileInfo(
      name: name,
      email: email,
      image: image,
    ); //apiToken: apiToken
  }
}
