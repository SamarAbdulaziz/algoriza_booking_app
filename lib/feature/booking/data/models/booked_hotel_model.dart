import 'package:algoriza_booking_app/feature/booking/data/models/hotel_model.dart';
import 'package:algoriza_booking_app/feature/booking/data/models/user_model.dart';
import 'package:algoriza_booking_app/feature/booking/domain/entities/booked_hotel.dart';

class BookedHotelModel extends BookedHotel {
  const BookedHotelModel(
      {required super.id,
      required super.userId,
      required super.hotelId,
      required super.type,
      required super.createdAt,
      required super.updatedAt,
      required super.user,
      required super.hotel});

  factory BookedHotelModel.fromJson(Map<String, dynamic> json) =>
      BookedHotelModel(
        id: json["id"],
        userId: json["user_id"],
        hotelId: json["hotel_id"],
        type: json["type"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        user: UserModel.fromJson(json["user"]),
        hotel: HotelModel.fromJson(json["hotel"]),
      );
}
