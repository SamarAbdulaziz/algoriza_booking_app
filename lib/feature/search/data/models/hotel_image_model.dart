
import 'package:algoriza_booking_app/feature/search/domain/entities/hotel_image.dart';

class HotelImageModel extends HotelImage {
  const HotelImageModel({
    required super.id,
    required super.hotelId,
    required super.image,
  });

  factory HotelImageModel.fromJson(Map<String, dynamic> json) =>
      HotelImageModel(
        id: json['id'],
        hotelId: json['hotel_id'],
        image: json['image'],
      );
}
