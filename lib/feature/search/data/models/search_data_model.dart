import 'package:algoriza_booking_app/feature/search/data/models/general_search_data_model.dart';
import 'package:algoriza_booking_app/feature/search/domain/entities/search_data.dart';

class SearchDataModel extends SearchData {
  SearchDataModel(
      {required super.statusType, required super.generalSearchData});

  factory SearchDataModel.fromJson(Map<String, dynamic> json) =>
      SearchDataModel(
        statusType: json['status']['type'],
        generalSearchData: GeneralSearchDataModel.fromJson(json['data']),
      );
}
