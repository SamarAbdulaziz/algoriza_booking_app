import 'package:algoriza_booking_app/feature/auth/domain/entities/title.dart';
import 'package:equatable/equatable.dart';

class Status extends Equatable {
  final String type;
  final Titles? title;

  const Status({required this.type, this.title});

  @override
  List<Object> get props => [type];
}
