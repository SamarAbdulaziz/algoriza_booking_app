import 'package:algoriza_booking_app/feature/explore/data/models/general_data_model.dart';
import 'package:algoriza_booking_app/feature/explore/domain/entities/hotels.dart';

class HotelsModel extends Hotels {
  const HotelsModel({
    required super.statusType,
    required super.generalData,
  });

  factory HotelsModel.fromJson(Map<String, dynamic> json) => HotelsModel(
    statusType: json['status']['type'],
    generalData:GeneralDataModel.fromJson(json['data']) ,

  );
}
