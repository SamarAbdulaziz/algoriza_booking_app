import 'package:algoriza_booking_app/feature/explore/domain/entities/general_data.dart';
import 'package:equatable/equatable.dart';

class Hotels extends Equatable {
  final String statusType;
  final GeneralData generalData;

  const Hotels({
    required this.statusType,
    required this.generalData,
  });

  @override
  List<Object> get props => [
        statusType,
        generalData,
      ];
}
