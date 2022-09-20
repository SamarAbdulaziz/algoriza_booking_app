import 'package:algoriza_booking_app/core/errors/exceptions.dart';
import 'package:algoriza_booking_app/core/utiles/constants.dart';
import 'package:algoriza_booking_app/feature/auth/data/models/auth_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<AuthenticationModel> loginByEmailAndPassword(
      String email, String password);

  Future<AuthenticationModel> registerByEmailAndPassword(
    String name,
    String email,
    String password,
    String passwordConfirmation,
  );
}


class RemoteDataSource extends BaseRemoteDataSource {
  var dio = Dio(BaseOptions(
    baseUrl: AppConstants.baseUrl,
    receiveDataWhenStatusError: true,
    connectTimeout: 5000,
  ));

  @override
  Future<AuthenticationModel> loginByEmailAndPassword(
      String email, String password) async {
    final response = await dio.post(AppConstants.loginPath, data: {
      'email': email,
      'password': password,
    });
    if (response.statusCode == 200) {
      // if (response.data['status']['type'] == '1') {
      //   return AuthenticationModel.fromJson(response.data);
      // }

      return AuthenticationModel.fromJson(response.data);
    } else {
      throw ServerException('Server exception');
    }
  }

  @override
  Future<AuthenticationModel> registerByEmailAndPassword(
    String name,
    String email,
    String password,
    String passwordConfirmation,
  ) async {
    final response = await dio.post(AppConstants.registerPath, data: {
      'name':name,
      'email': email,
      'password': password,
      'password_confirmation':passwordConfirmation,
    });
    if (response.statusCode == 200) {
      // if (response.data['status']['type'] == '1') {
      //   return AuthenticationModel.fromJson(response.data);
      // }

      return AuthenticationModel.fromJson(response.data);
    } else {
      throw ServerException('Server exception');
    }
  }
}
