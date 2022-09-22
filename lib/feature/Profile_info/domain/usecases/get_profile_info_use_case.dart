import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/Profile_info/data/models/profile_info_model.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/repository/base_profile_repository.dart';
import 'package:dartz/dartz.dart';

class GetProfileInfoUseCase {
  //extends BaseUseCase<Authentication,String>
  final BaseProfileRepository baseProfileRepository;

  GetProfileInfoUseCase(this.baseProfileRepository);

  Future<Either<Failure, ProfileInfoModel>> call() async {
    //    required String apiToken,
    return await baseProfileRepository
        .getProfileInfoByToken(); //apiToken: apiToken
  }
}
