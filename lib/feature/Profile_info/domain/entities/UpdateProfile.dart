import 'package:algoriza_booking_app/feature/Profile_info/domain/entities/data.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/entities/status.dart';
import 'package:equatable/equatable.dart';

class UpdateProfile extends Equatable {
  final Status status;
  Data? data;

  UpdateProfile({required this.status, this.data});

  @override
  List<Object> get props => [status];
}
