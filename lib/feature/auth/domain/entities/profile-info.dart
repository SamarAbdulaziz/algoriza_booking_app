import 'package:algoriza_booking_app/feature/auth/domain/entities/data.dart';
import 'package:equatable/equatable.dart';

class ProfileInfo extends Equatable {
  final String statusType;
  final Data data;

  const ProfileInfo({required this.statusType, required this.data});

  @override
  List<Object> get props => [statusType, data];
}
