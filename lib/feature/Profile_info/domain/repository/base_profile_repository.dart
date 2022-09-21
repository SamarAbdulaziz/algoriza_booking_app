import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/auth/data/models/profile_info_model.dart';
import 'package:dartz/dartz.dart';

abstract class BaseProfileRepository {

  Future<Either<Failure, ProfileInfoModel>> getProfileInfoByToken();
}
// required String apiToken,