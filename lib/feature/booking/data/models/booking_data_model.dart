import 'package:algoriza_booking_app/feature/booking/data/models/general_booking_data_model.dart';
import 'package:algoriza_booking_app/feature/booking/domain/entities/booking_data.dart';

class BookingDataModel extends BookingData {
  const BookingDataModel({
    required super.statusType,
    required super.generalBookingData,
  });
 factory BookingDataModel.fromJson(Map<String,dynamic>json)=>BookingDataModel(
   statusType: json['status']['type'],
   generalBookingData:GeneralBookingDataModel.fromJson(json['data'] ),
 );
}
