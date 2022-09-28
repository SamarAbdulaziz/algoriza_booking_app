import 'package:algoriza_booking_app/feature/search/domain/entities/hotel_image.dart';
import 'package:algoriza_booking_app/feature/search/domain/entities/facility.dart';
import 'package:equatable/equatable.dart';

class Hotel extends Equatable {
  final int id;
  final String name;
  final String description;
  final String price;
  final String address;
  final String longitude;
  final String latitude;
  final String rate;
  final String createdAt;
  final String updatedAt;
  final List<HotelImage> hotelImageList;
  final List<Facility> facilitiesList;

  const Hotel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.address,
    required this.longitude,
    required this.latitude,
    required this.rate,
    required this.createdAt,
    required this.updatedAt,
    required this.hotelImageList,
    required this.facilitiesList,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        price,
        address,
        longitude,
        latitude,
        rate,
        createdAt,
        updatedAt,
        hotelImageList,
        facilitiesList,
      ];
}
