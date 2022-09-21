import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/auth/data/models/profile_info_model.dart';
import 'package:algoriza_booking_app/feature/auth/domain/entities/auth.dart';
import 'package:dartz/dartz.dart';

abstract class BaseAuthRepository {
  Future<Either<Failure, AuthenticationInfo>> loginByEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<Failure, AuthenticationInfo>> registerByEmailAndPassword({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
  });
  Future<Either<Failure, ProfileInfoModel>> getProfileInfoByToken();
}
// required String apiToken,