import 'package:algoriza_booking_app/feature/auth/data/models/data_model.dart';
import 'package:algoriza_booking_app/feature/auth/data/models/status_model.dart';
import 'package:algoriza_booking_app/feature/auth/domain/entities/auth.dart';
import 'package:algoriza_booking_app/feature/auth/domain/entities/data.dart';

import '../../domain/entities/status.dart';

class AuthenticationModel extends AuthenticationInfo {
    AuthenticationModel({
    required Status status,
     Data? data,
  }) : super(
    status: status,
    data: data,
  );
  factory AuthenticationModel.fromJson(Map<String,dynamic>json){
    return AuthenticationModel(
      status:StatusModel.fromJson(json['status']) ,
      data:DataModel.fromJson(json['data']) ,
    );
  }
}
