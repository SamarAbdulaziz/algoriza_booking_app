import 'package:algoriza_booking_app/feature/search/domain/entities/hotel.dart';
import 'package:algoriza_booking_app/feature/search/data/models/hotel_model.dart';
import 'package:algoriza_booking_app/feature/search/domain/entities/general_search_data.dart';

class GeneralSearchDataModel extends GeneralSearchData {
  const GeneralSearchDataModel(
      {required super.currentPage,
      required super.hotelsList,
      required super.firstPageUrl,
      required super.from,
      required super.lastPage,
      required super.lastPageUrl,
      required super.nextPageUrl,
      required super.path,
      required super.perPage,
      required super.prevPageUrl,
      required super.to,
      required super.total});

  factory GeneralSearchDataModel.fromJson(Map<String, dynamic> json) =>
      GeneralSearchDataModel(
        currentPage: json["current_page"],
        hotelsList:
            List<Hotel>.from(json["data"].map((x) => HotelModel.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
      );
}
