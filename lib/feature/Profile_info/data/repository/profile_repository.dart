import 'package:algoriza_booking_app/core/errors/exceptions.dart';
import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/Profile_info/data/data_source/local_data_source.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/repository/base_profile_repository.dart';
import 'package:algoriza_booking_app/feature/auth/data/data_source/remote_data_source.dart';
import 'package:algoriza_booking_app/feature/auth/data/models/profile_info_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class ProfileInfoRepository extends BaseProfileRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  ProfileInfoRepository(this.baseRemoteDataSource);

  @override //required String apiToken,
  Future<Either<Failure, ProfileInfoModel>> getProfileInfoByToken() async {
    var token = CacheData.getData(key: 'apiToken');
    final result = await baseRemoteDataSource.getProfileInfoByToken(token!);
    try {
      debugPrint(result.statusType);
      debugPrint(result.data.toString());
      debugPrint(result.data.apiToken);
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    }
  }
}
