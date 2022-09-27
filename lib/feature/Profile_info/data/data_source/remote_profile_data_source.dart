import 'dart:io';

import 'package:algoriza_booking_app/core/errors/exceptions.dart';
import 'package:algoriza_booking_app/core/utiles/constants.dart';
import 'package:algoriza_booking_app/feature/Profile_info/data/models/profile_info_model.dart';
import 'package:algoriza_booking_app/feature/Profile_info/data/models/update_profile_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteProfileDataSource {
  Future<ProfileInfoModel> getProfileInfoByToken({
    required String apiToken,
  });

  Future<UpdateProfileModel> updateProfileInfo({
    required String apiToken,
    String? name,
    String? email,
    File? pickedImage,
  });
}

class RemoteProfileDataSource extends BaseRemoteProfileDataSource {
  var dio = Dio(BaseOptions(
    baseUrl: AppConstants.baseUrl,
    receiveDataWhenStatusError: true,
    connectTimeout: 5000,
  ));

  @override
  Future<ProfileInfoModel> getProfileInfoByToken({
    required String apiToken,
  }) async {
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
  Future<UpdateProfileModel> updateProfileInfo({
    required String apiToken,
    String? name,
    String? email,
    File? pickedImage,
  }) async {
    FormData formData = FormData.fromMap({
      'name': name,
      'email': email,
      // 'image': image,
      'image': await MultipartFile.fromFile(
        pickedImage!.path,
        filename: pickedImage.path.split('/').last,
      ),
    });
    final response = await dio.post(AppConstants.updateProfilePath,
        options: Options(headers: {
          'token': apiToken,
        }),
        data:formData
        );

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
