import 'package:algoriza_booking_app/feature/explore/domain/entities/hotel_image.dart';

class HotelImageModel extends HotelImage {
  const HotelImageModel({
     super.id,
     super.hotelId,
     super.image,
  });

  factory HotelImageModel.fromJson(Map<String, dynamic> json) =>
      HotelImageModel(
        id: json['id'],
        hotelId: json['hotel_id'],
        image: json['image'],
      );
}
