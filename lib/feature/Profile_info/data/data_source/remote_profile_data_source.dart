import 'package:algoriza_booking_app/core/errors/exceptions.dart';
import 'package:algoriza_booking_app/core/utiles/constants.dart';
import 'package:algoriza_booking_app/feature/Profile_info/data/models/profile_info_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteProfileDataSource {

  Future<ProfileInfoModel> getProfileInfoByToken(
    String apiToken,
  );
}


class RemoteProfileDataSource extends BaseRemoteProfileDataSource {
  var dio = Dio(BaseOptions(
    baseUrl: AppConstants.baseUrl,
    receiveDataWhenStatusError: true,
    connectTimeout: 5000,
  ));

  @override
  Future<ProfileInfoModel> getProfileInfoByToken(
    String apiToken,
  ) async {
    final response = await dio.get(AppConstants.profilePath,
        options: Options(headers: {
          'token': apiToken,
        }));
    // dio.options.headers={
    //   'token':apiToken,
    // };
    if (response.statusCode == 200) {
      // if (response.data['status']['type'] == '1') {
      //   return AuthenticationModel.fromJson(response.data);
      // }

      return ProfileInfoModel.fromJson(response.data);
    } else {
      throw ServerException('Server exception');
    }
  }
}
