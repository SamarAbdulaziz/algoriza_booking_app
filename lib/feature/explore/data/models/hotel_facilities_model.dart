import 'package:algoriza_booking_app/feature/explore/domain/entities/hotel_facilities.dart';

class HotelFacilitiesModel extends HotelFacilities {
  const HotelFacilitiesModel({
    required super.id,
    required super.hotelId,
    required super.facilityId,
  });

  factory HotelFacilitiesModel.fromJson(Map<String, dynamic> json) =>
      HotelFacilitiesModel(
        id: json['id'],
        hotelId:json['hotel_id'] ,
        facilityId:json['facility_id'] ,
      );
}
