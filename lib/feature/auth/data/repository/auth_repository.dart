import 'package:algoriza_booking_app/core/errors/exceptions.dart';
import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/auth/data/data_source/remote_data_source.dart';
import 'package:algoriza_booking_app/feature/auth/domain/entities/auth.dart';
import 'package:algoriza_booking_app/feature/auth/domain/repository/base_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class AuthenticationRepository extends BaseAuthRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  AuthenticationRepository(this.baseRemoteDataSource);

  @override
  Future<Either<Failure, AuthenticationInfo>> loginByEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final result =
        await baseRemoteDataSource.loginByEmailAndPassword(email, password);
    try {
      debugPrint(result.status.type);
      debugPrint(result.status.title.arMessage);
      debugPrint(result.status.title.enMessage);
      debugPrint(result.data!.name);
      debugPrint(result.data!.apiToken);
      debugPrint(result.data.toString());
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    }
  }

  @override
  Future<Either<Failure, AuthenticationInfo>> registerByEmailAndPassword(
      {required String name,
      required String email,
      required String password,
      required String passwordConfirmation}) async {
    final result = await baseRemoteDataSource.registerByEmailAndPassword(
      name,
      email,
      password,
      passwordConfirmation,
    );
    try {
      debugPrint(result.status.type);
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.message));
    }
  }
}
