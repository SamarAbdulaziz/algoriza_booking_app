import 'package:algoriza_booking_app/feature/auth/domain/entities/data.dart';

class DataModel extends Data {
  const DataModel({
    required int id,
    required String name,
    required String email,
    required String apiToken,
    required dynamic image,
    required String createdAt,
    required String updatedAt,
    required dynamic googleId,
    required dynamic provider,
  }) : super(
    id: id,
    name: name,
    email: email,
    apiToken: apiToken,
    image: image,
    createdAt: createdAt,
    updatedAt: updatedAt,
    googleId: googleId,
    provider: provider,
  );
  factory DataModel.fromJson(Map<String,dynamic>json){
    return DataModel(
     id: json['id'],
      name: json['name'],
      email: json['email'],
      apiToken: json['api_token'],
      image: json['image']??'  ',
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      googleId: json['google_id']??'  ',
      provider: json['provider']?? '  ',
    );
  }
}
