import 'package:algoriza_booking_app/feature/search/domain/entities/facility.dart';
import 'package:equatable/equatable.dart';

class Facilities extends Equatable {
  final String statusType;
  final List<Facility> facilitiesList;

  Facilities({required this.statusType, required this.facilitiesList});

  @override
  List<Object> get props => [statusType, facilitiesList];
}