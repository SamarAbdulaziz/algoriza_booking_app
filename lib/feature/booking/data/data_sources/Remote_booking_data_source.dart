import 'package:algoriza_booking_app/core/errors/exceptions.dart';
import 'package:algoriza_booking_app/core/utiles/constants.dart';
import 'package:algoriza_booking_app/feature/booking/data/models/booking_data_model.dart';
import 'package:algoriza_booking_app/feature/booking/data/models/booking_status_model.dart';
import 'package:dio/dio.dart';

abstract class BaseBookingRemoteDataSource {
  Future<BookingDataModel> getBooking({required String? token, required type});

  Future<BookingStatusModel> createBooking(
      {required String? token, required int hotelId});

  Future<BookingStatusModel> updateBooking(
      {required int bookingId, required String type});
}

class BookingRemoteDataSource extends BaseBookingRemoteDataSource {
  var dio = Dio(BaseOptions(
    baseUrl: AppConstants.baseUrl,
    receiveDataWhenStatusError: true,
    connectTimeout: 5000,
  ));

  @override
  Future<BookingDataModel> getBooking(
      {required String? token, required type}) async {
    final response = await dio.get(
      AppConstants.getBookingPath,
      queryParameters: {
        'type': type,
      },
      options: Options(headers: {
        'token': token,
      }),
    );
    if (response.statusCode == 200) {
      return BookingDataModel.fromJson(response.data);
    } else {
      throw ServerException('Server exception');
    }
  }

  @override
  Future<BookingStatusModel> createBooking(
      {required String? token, required int hotelId}) async {
    final response = await dio.post(AppConstants.createBookingPath,
        options: Options(headers: {
          'token': token,
        }),
        data: {
          'hotel_id': hotelId,
        });
    if (response.statusCode == 200) {
      return BookingStatusModel.fromJson(response.data);
    } else {
      throw ServerException('Server exception');
    }
  }

  @override
  Future<BookingStatusModel> updateBooking(
      {required int bookingId, required String type}) async {
    final response = await dio.post(AppConstants.updateProfilePath, data: {
      'booking_id': bookingId,
      'type': type,
    });
    if (response.statusCode == 200) {
      return BookingStatusModel.fromJson(response.data);
    } else {
      throw ServerException('Server exception');
    }
  }
}
