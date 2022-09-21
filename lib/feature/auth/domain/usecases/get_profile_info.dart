import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/auth/domain/entities/auth.dart';
import 'package:algoriza_booking_app/feature/auth/domain/repository/base_auth_repository.dart';
import 'package:dartz/dartz.dart';

class GetProfileInfoUseCase {
  //extends BaseUseCase<Authentication,String>
  final BaseAuthRepository baseAuthRepository;

  GetProfileInfoUseCase(this.baseAuthRepository);

  Future<Either<Failure, AuthenticationInfo>> call({
    required String apiToken,
  }) async {
    return await baseAuthRepository.getProfileInfoByToken(
        apiToken: apiToken);
  }
}
