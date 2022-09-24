import 'package:algoriza_booking_app/feature/booking/domain/entities/general_booking_data.dart';
import 'package:equatable/equatable.dart';

class BookingData extends Equatable {
  final String statusType;
  final GeneralBookingData generalBookingData;

  const BookingData({
    required this.statusType,
    required this.generalBookingData,
  });

  @override
  List<Object?> get props => [statusType, generalBookingData];
}
