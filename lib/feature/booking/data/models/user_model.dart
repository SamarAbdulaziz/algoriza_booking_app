import 'package:algoriza_booking_app/feature/booking/domain/entities/user.dart';

class UserModel extends User {
  const UserModel(
      {required super.id,
      required super.name,
      required super.email,
      required super.apiToken,
      required super.image,
      required super.createdAt,
      required super.updatedAt,
      required super.googleId,
      required super.provider});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        apiToken: json["api_token"],
        image: json["image"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        googleId: json["google_id"],
        provider: json["provider"],
      );
}
