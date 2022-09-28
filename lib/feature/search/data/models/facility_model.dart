
import 'package:algoriza_booking_app/feature/search/domain/entities/facility.dart';

class FacilityModel extends Facility {
  const FacilityModel({
    required super.id,
    required super.name,
    required super.image,
  });

  factory FacilityModel.fromJson(Map<String, dynamic> json) =>
      FacilityModel(
        id: json['id'],
        name: json['name'],
        image: json['image'],
      );
}
