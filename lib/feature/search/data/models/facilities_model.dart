
import 'package:algoriza_booking_app/feature/search/domain/entities/facilities.dart';

class FacilitiesModel extends Facilities {
  const FacilitiesModel({
    required super.id,
    required super.name,
    required super.image,
  });

  factory FacilitiesModel.fromJson(Map<String, dynamic> json) =>
      FacilitiesModel(
        id: json['id'],
        name: json['name'],
        image: json['image'],
      );
}
