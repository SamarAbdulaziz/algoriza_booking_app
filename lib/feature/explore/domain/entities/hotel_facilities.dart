import 'package:equatable/equatable.dart';

class HotelFacilities extends Equatable {
  final int? id;
  final String? hotelId;
  final String? facilityId;

  const HotelFacilities({
    this.id,
    this.hotelId,
    this.facilityId,
  });

  @override
  List<Object?> get props => [id, hotelId, facilityId];
}
