
import 'package:algoriza_booking_app/feature/Profile_info/data/models/title_model.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/entities/status.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/entities/title.dart';

class StatusModel extends Status {
  const StatusModel({
    required String type,
    Titles? title,
  })
      : super(
    type: type,
    title:title ,
  );

  factory StatusModel.fromJson(Map<String, dynamic> json) =>
      StatusModel(
          type: json['type'],
          title:TitleModel.fromJson(json['title']),
      );
}
