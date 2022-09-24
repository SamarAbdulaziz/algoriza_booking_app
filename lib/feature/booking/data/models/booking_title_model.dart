import 'package:algoriza_booking_app/feature/booking/domain/entities/booking_title.dart';

class BookingTitleModel extends BookingTitles {
  const BookingTitleModel({
    required super.arMessage,
    required super.enMessage,
  });

  factory BookingTitleModel.fromJson(Map<String, dynamic> json) =>
      BookingTitleModel(
        arMessage: json['ar'],
        enMessage: json['en'],
      );
}
