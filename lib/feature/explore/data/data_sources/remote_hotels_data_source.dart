import 'package:algoriza_booking_app/core/errors/exceptions.dart';
import 'package:algoriza_booking_app/core/utiles/constants.dart';
import 'package:algoriza_booking_app/feature/explore/data/models/hotels_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteHotelsDataSource {
  Future<HotelsModel> exploreHotels({int? count, int? page});
}

class RemoteHotelsDataSource extends BaseRemoteHotelsDataSource {
  var dio = Dio(
    BaseOptions(
      baseUrl: AppConstants.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 5000,
    ),
  );

  @override
  Future<HotelsModel> exploreHotels({int? count, int? page}) async {
    final response = await dio.get(
      AppConstants.hotelsPath,
      queryParameters: {'count': count, 'page': page},
    );
    if (response.statusCode == 200) {
      return HotelsModel.fromJson(response.data);
    } else {
      throw ServerException('Server exception');
    }
  }
}
