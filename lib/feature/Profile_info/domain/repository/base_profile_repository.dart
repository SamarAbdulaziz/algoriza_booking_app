import 'dart:io';

import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/Profile_info/data/models/profile_info_model.dart';
import 'package:algoriza_booking_app/feature/Profile_info/data/models/update_profile_model.dart';
import 'package:dartz/dartz.dart';

abstract class BaseProfileRepository {
  Future<Either<Failure, ProfileInfoModel>> getProfileInfoByToken();

  Future<Either<Failure, UpdateProfileModel>> updateProfileInfo({
    required String name,
    required String email,
    File? pickedImage,
  });
}
// required String apiToken,