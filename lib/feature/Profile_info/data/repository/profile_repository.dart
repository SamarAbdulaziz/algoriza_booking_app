import 'dart:io';

import 'package:algoriza_booking_app/core/errors/exceptions.dart';
import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/core/utiles/local_data_source.dart';
import 'package:algoriza_booking_app/feature/Profile_info/data/data_source/remote_profile_data_source.dart';
import 'package:algoriza_booking_app/feature/Profile_info/data/models/profile_info_model.dart';
import 'package:algoriza_booking_app/feature/Profile_info/data/models/update_profile_model.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/repository/base_profile_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
class ProfileInfoRepository extends BaseProfileRepository {
  final BaseRemoteProfileDataSource baseRemoteProfileDataSource;

  ProfileInfoRepository(this.baseRemoteProfileDataSource);

  var token = CacheData.getData(key: 'apiToken');

  @override
  Future<Either<Failure, ProfileInfoModel>> getProfileInfoByToken() async {
    final result =
        await baseRemoteProfileDataSource.getProfileInfoByToken(apiToken: token!);
    try {
      // debugPrint(result.statusType);
      // debugPrint(result.data.toString());
      // debugPrint(result.data.apiToken);
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    }
  }

  @override
  Future<Either<Failure, UpdateProfileModel>> updateProfileInfo({
    required String name,
    required String email,
    File? pickedImage,
  }) async {
    final updatedResult = await baseRemoteProfileDataSource.updateProfileInfo(
        apiToken: token!, name: name, email: email, pickedImage: pickedImage);
    try {
      debugPrint('UPDATED DATA ');
      debugPrint(updatedResult.status.type);
      debugPrint(updatedResult.status.title!.enMessage);
      debugPrint(updatedResult.status.title!.arMessage);
      debugPrint(updatedResult.data.toString());

      return Right(updatedResult);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    }
  }
}
//  @override //required String apiToken,
//   Future<Either<Failure, ProfileInfoModel>> getProfileInfoByToken() async {
//     var token = CacheData.getData(key: 'apiToken');
//     final result =
//         await baseRemoteProfileDataSource.getProfileInfoByToken(token!);
//     try {
//       debugPrint(result.statusType);
//       debugPrint(result.data.toString());
//       debugPrint(result.data.apiToken);
//       return Right(result);
//     } on ServerException catch (failure) {
//       return Left(ServerFailure(failure.message));
//     }
//   }
