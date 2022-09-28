import 'package:algoriza_booking_app/feature/search/data/models/facility_model.dart';
import 'package:algoriza_booking_app/feature/search/domain/entities/filter_facility.dart';

class FacilitiesModel extends Facilities {
  FacilitiesModel({required super.statusType, required super.facilitiesList});

  factory FacilitiesModel.fromJson(Map<String, dynamic> json) =>
      FacilitiesModel(
        statusType: json["status"]['type'],
        facilitiesList: List<FacilityModel>.from(
            json["data"].map((x) => FacilityModel.fromJson(x))),
      );
}
