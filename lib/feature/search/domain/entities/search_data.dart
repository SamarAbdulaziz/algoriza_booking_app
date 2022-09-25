import 'package:algoriza_booking_app/feature/search/domain/entities/general_search_data.dart';
import 'package:equatable/equatable.dart';

class SearchData extends Equatable {
  final String statusType;
  final GeneralSearchData generalSearchData;

  const SearchData({
    required this.statusType,
    required this.generalSearchData,
  });

  @override
  List<Object?> get props => [statusType, generalSearchData];
}
