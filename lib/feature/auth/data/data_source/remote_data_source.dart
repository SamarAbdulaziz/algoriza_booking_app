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
    if (response.data['status']['type'] == '1') {
      return AuthenticationModel.fromJson(response.data);}
    else {
      throw ServerException(response.data['status']['title']['ar']);
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
      return AuthenticationModel.fromJson(response.data);
    } else {
      throw ServerException('Server exception');
    }
  }
}
/*if (response.data['status']['type'] == '1') {
      return AuthenticationModel.fromJson(response.data);
    } else if (response.data['status']['type'] == '0') {
      throw ServerException(response.data['status']['title']['ar']);
    }*/
// extension on DioHelper {
//   Future request({
//     required Future<Response> Function() call,
//   }) async {
//     try {
//       final r = await call.call();
//       debugPrint("Response_Data => ${r.data}");
//       debugPrint("Response_Code => ${r.statusCode}");
//
//       if(r.data['status']['type'] == '0') {
//         dynamic title = r.data['status']['title'];
//
//         throw PrimaryServerException(
//           message: title is String ? title : r.data['status']['title']['ar'],
//           code: r.statusCode ?? 500,
//           error: title is String ? title : r.data['status']['title']['en'],
//         );
//       }
//
//       return r.data;
//     } on DioError catch (e) {
//       debugPrint("Error_Message => ${e.message}");
//       debugPrint("Error_Error => ${e.error.toString()}");
//       debugPrint("Error_Type => ${e.type.toString()}");
//
//       throw PrimaryServerException(
//         code: 100,
//         error: 'error message',
//         message: 'message Hello from primary exception',
//       );
//     } catch (e) {
//       PrimaryServerException exception = e as PrimaryServerException;
//
//       throw PrimaryServerException(
//         code: exception.code,
//         error: exception.error,
//         message: exception.message,
//       );
//     }
//   }