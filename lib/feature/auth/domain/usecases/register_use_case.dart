import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/auth/domain/entities/auth.dart';
import 'package:algoriza_booking_app/feature/auth/domain/repository/base_auth_repository.dart';
import 'package:dartz/dartz.dart';

class RegisterUseCase {
  //extends BaseUseCase<Authentication,String>
  final BaseAuthRepository baseAuthRepository;

  RegisterUseCase(this.baseAuthRepository);

  Future<Either<Failure, AuthenticationInfo>> call(
      {required String name,
        required String email,
        required String password,
        required String passwordConfirmation}) async {
    return await baseAuthRepository.registerByEmailAndPassword(
      name: name,
      email: email,
      password: password,
      passwordConfirmation: passwordConfirmation,
    );
  }
}
