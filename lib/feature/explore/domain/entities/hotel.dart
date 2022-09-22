import 'package:algoriza_booking_app/feature/explore/domain/entities/hotel_facilities.dart';
import 'package:algoriza_booking_app/feature/explore/domain/entities/hotel_image.dart';
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
  final List<HotelFacilities> hotelFacilitiesList;

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
    required this.hotelFacilitiesList,
  });

  @override
  List<Object> get props => [
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
        hotelFacilitiesList,
      ];
}
