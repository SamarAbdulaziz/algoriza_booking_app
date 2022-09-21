import 'package:algoriza_booking_app/feature/auth/domain/entities/data.dart';
import 'package:algoriza_booking_app/feature/auth/domain/entities/status.dart';
import 'package:equatable/equatable.dart';

class AuthenticationInfo extends Equatable {
  final Status status;

  Data? data;

   AuthenticationInfo({required this.status, this.data});

  @override
  List<Object> get props => [status];
}
