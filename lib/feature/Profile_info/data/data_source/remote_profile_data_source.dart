import 'package:algoriza_booking_app/core/errors/exceptions.dart';
import 'package:algoriza_booking_app/core/utiles/constants.dart';
import 'package:algoriza_booking_app/feature/Profile_info/data/models/profile_info_model.dart';
import 'package:algoriza_booking_app/feature/Profile_info/data/models/update_profile_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteProfileDataSource {
  Future<ProfileInfoModel> getProfileInfoByToken(
    String apiToken,
  );

  Future<UpdateProfileModel> updateProfileInfo(
    String apiToken,
    String name,
    String email,
    String? image,
  );
}


class RemoteProfileDataSource extends BaseRemoteProfileDataSource {
  var dio = Dio(BaseOptions(
    baseUrl: AppConstants.baseUrl,
    receiveDataWhenStatusError: true,
    connectTimeout: 5000,
  ));

  @override
  Future<ProfileInfoModel> getProfileInfoByToken(String apiToken,) async {
    final response = await dio.get(AppConstants.profilePath,
        options: Options(headers: {
          'token': apiToken,
        }));

    if (response.statusCode == 200) {
      // if (response.data['status']['type'] == '1') {
      //   return AuthenticationModel.fromJson(response.data);
      // }

      return ProfileInfoModel.fromJson(response.data);
    } else {
      throw ServerException('Server exception');
    }
  }

  @override
  Future<UpdateProfileModel> updateProfileInfo(
    String apiToken,
    String name,
    String email,
    String? image,
  ) async {
    final response = await dio.post(AppConstants.updateProfilePath,
        options: Options(headers: {
          'token': apiToken,
        }),
        data: {
          'name': name,
          'email': email,
          'image': image,
        });

    if (response.statusCode == 200) {
      // if (response.data['status']['type'] == '1') {
      //   return AuthenticationModel.fromJson(response.data);
      // }

      return UpdateProfileModel.fromJson(response.data);
    } else {
      throw ServerException('Server exception');
    }
  }
}
