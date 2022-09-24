import 'package:algoriza_booking_app/feature/booking/data/models/booking_title_model.dart';
import 'package:algoriza_booking_app/feature/booking/domain/entities/booking_status.dart';

class BookingStatusModel extends BookingStatus {
  const BookingStatusModel({
    required super.type,
    required super.title,
  });

  factory BookingStatusModel.fromJson(Map<String, dynamic> json) =>
      BookingStatusModel(
        type:json['type'] ,
        title:BookingTitleModel.fromJson(json['title']) ,
      );

}