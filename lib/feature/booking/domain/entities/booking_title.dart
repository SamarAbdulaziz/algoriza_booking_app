import 'package:equatable/equatable.dart';

class BookingTitles extends Equatable {
  final String arMessage;
  final String enMessage;

  const BookingTitles({required this.arMessage, required this.enMessage});

  @override
  List<Object> get props => [arMessage, enMessage];
}