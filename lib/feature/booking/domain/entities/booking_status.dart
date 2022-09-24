import 'package:algoriza_booking_app/feature/booking/domain/entities/booking_title.dart';
import 'package:equatable/equatable.dart';

class BookingStatus extends Equatable {
  final String type;
  final BookingTitles title;

  const BookingStatus({required this.type, required this.title});

  @override
  List<Object> get props => [type, title];
}
