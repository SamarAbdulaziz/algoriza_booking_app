import 'package:equatable/equatable.dart';

class HotelImage extends Equatable {

  final int? id;
  final String? hotelId;
  final String? image;

  const HotelImage({
    this.id,
    this.hotelId,
    this.image,
  });

  @override
  List<Object?> get props => [id, hotelId, image];
}
