import 'package:equatable/equatable.dart';

class HotelFacilities extends Equatable {
  final int id;
  final String hotelId;
  final String facilityId;

  const HotelFacilities({
    required this.id,
    required this.hotelId,
    required this.facilityId,
  });

  @override
  List<Object> get props => [id, hotelId, facilityId];
}
