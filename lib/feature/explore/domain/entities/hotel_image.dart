import 'package:equatable/equatable.dart';

class HotelImage extends Equatable {

  final int id;
  final String hotelId;
  final String image;

  const HotelImage({
    required this.id,
    required this.hotelId,
    required this.image,
  });

  @override
  List<Object> get props => [
        id,
        hotelId,
        image,
      ];
}
