import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/auth/domain/entities/auth.dart';
import 'package:algoriza_booking_app/feature/auth/domain/repository/base_auth_repository.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase {
  //extends BaseUseCase<Authentication,String>
  final BaseAuthRepository baseAuthRepository;

  LoginUseCase(this.baseAuthRepository);

  Future<Either<Failure, AuthenticationInfo>> call({
    required String email,
    required String password,
  }) async {
    return await baseAuthRepository.loginByEmailAndPassword(
        email: email, password: password);
  }
}
