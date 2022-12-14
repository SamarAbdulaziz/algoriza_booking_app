
import 'package:algoriza_booking_app/feature/Profile_info/data/models/data_model.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/entities/data.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/entities/profile-info.dart';

class ProfileInfoModel extends ProfileInfo {


  const ProfileInfoModel({
    required String statusType,
    required Data data,
  }):super(
    statusType: statusType,
    data: data,
  );

  factory ProfileInfoModel.fromJson(Map<String, dynamic> json) {
    return ProfileInfoModel(
      statusType: json['status']['type'],
      data: DataModel.fromJson(json['data']),
    );
  }
}
