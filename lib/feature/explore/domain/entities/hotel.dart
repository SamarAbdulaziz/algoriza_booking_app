import 'package:algoriza_booking_app/feature/explore/domain/entities/hotel_facilities.dart';
import 'package:algoriza_booking_app/feature/explore/domain/entities/hotel_image.dart';
import 'package:equatable/equatable.dart';

class Hotel extends Equatable {
  final int? id;
  final String? name;
  final String? description;
  final String? price;
  final String? address;
  final String? longitude;
  final String? latitude;
  final String? rate;
  final String? createdAt;
  final String? updatedAt;
  final List<HotelImage>? hotelImageList;
  final List<HotelFacilities>? hotelFacilitiesList;

  const Hotel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.address,
    this.longitude,
    this.latitude,
    this.rate,
    this.createdAt,
    this.updatedAt,
    this.hotelImageList,
    this.hotelFacilitiesList,
  });

  @override
  List<Object?> get props =>
      [
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
