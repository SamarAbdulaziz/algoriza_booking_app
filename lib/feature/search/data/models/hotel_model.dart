import 'package:algoriza_booking_app/feature/search/data/models/facility_model.dart';
import 'package:algoriza_booking_app/feature/search/data/models/hotel_image_model.dart';
import 'package:algoriza_booking_app/feature/search/domain/entities/hotel.dart';

class HotelModel extends Hotel {
  const HotelModel(
      {required super.id,
    required super.name,
    required super.description,
    required super.price,
    required super.address,
    required super.longitude,
    required super.latitude,
    required super.rate,
    required super.createdAt,
    required super.updatedAt,
    required super.hotelImageList,
    required super.facilitiesList,
  });

  factory HotelModel.fromJson(Map<String, dynamic> json) => HotelModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        address: json["address"],
        longitude: json["longitude"],
        latitude: json["latitude"],
        rate: json["rate"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        hotelImageList: List<HotelImageModel>.from(
            json["hotel_images"].map((x) => HotelImageModel.fromJson(x))),
        facilitiesList: List<FacilityModel>.from(
            json["facilities"].map((x) => FacilityModel.fromJson(x))),
      );
}
