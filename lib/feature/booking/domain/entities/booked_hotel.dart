import 'package:algoriza_booking_app/feature/booking/domain/entities/hotel.dart';
import 'package:algoriza_booking_app/feature/booking/domain/entities/user.dart';
import 'package:equatable/equatable.dart';

class BookedHotel extends Equatable {
  //booking id
  final int id;
  final String userId;
  final String hotelId;
  final String type;
  final String createdAt;
  final String updatedAt;
  final User user;
  final Hotel hotel;

  const BookedHotel({
    required this.id,
    required this.userId,
    required this.hotelId,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
    required this.hotel,
  });

  @override
  List<Object?> get props => [
        id,
        userId,
        hotelId,
        type,
        createdAt,
        updatedAt,
        user,
        hotel,
      ];
}
