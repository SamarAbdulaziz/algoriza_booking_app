import 'package:equatable/equatable.dart';

class Titles extends Equatable {
  final String arMessage;
  final String enMessage;

  const Titles({required this.arMessage, required this.enMessage});

  @override
  List<Object> get props => [arMessage, enMessage];
}