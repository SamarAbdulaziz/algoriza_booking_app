import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String apiToken;
  final dynamic image;
  final String createdAt;
  final String updatedAt;
  final dynamic googleId;
  final dynamic provider;

  const User(
      {required this.id,
      required this.name,
      required this.email,
      required this.apiToken,
      required this.image,
      required this.createdAt,
      required this.updatedAt,
      required this.googleId,
      required this.provider});

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        apiToken,
        image,
        createdAt,
        updatedAt,
        googleId,
        provider,
      ];
}
