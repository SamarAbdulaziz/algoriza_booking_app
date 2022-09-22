import 'package:algoriza_booking_app/feature/explore/data/models/hotel_model.dart';
import 'package:algoriza_booking_app/feature/explore/domain/entities/general_data.dart';

class GeneralDataModel extends GeneralData {
  const GeneralDataModel({
    required super.currentPage,
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
    required super.total,
  });

  factory GeneralDataModel.fromJson(Map<String,dynamic>json) => GeneralDataModel(
    currentPage:json['current_page'] ,
    hotelsList: json['data'].map((hotel)=>HotelModel.fromJson(hotel)).toList(),
    //hotels: List<Hotel>.from(json["hotels"].map((x) => Hotel.fromJson(x))),
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
