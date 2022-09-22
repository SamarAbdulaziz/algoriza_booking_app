import 'package:algoriza_booking_app/feature/Profile_info/data/models/data_model.dart';
import 'package:algoriza_booking_app/feature/Profile_info/data/models/status_model.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/entities/UpdateProfile.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/entities/data.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/entities/status.dart';

class UpdateProfileModel extends UpdateProfile {
  UpdateProfileModel({
    required Status status,
    Data? data,
  }) : super(
          status: status,
          data: data,
        );

  factory UpdateProfileModel.fromJson(Map<String, dynamic> json) {
    return UpdateProfileModel(
      status: StatusModel.fromJson(json['status']),
      data: DataModel.fromJson(json['data']),
    );
  }
}
