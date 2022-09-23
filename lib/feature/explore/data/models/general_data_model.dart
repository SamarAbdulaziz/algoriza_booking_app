import 'package:algoriza_booking_app/feature/explore/data/models/hotel_model.dart';
import 'package:algoriza_booking_app/feature/explore/domain/entities/general_data.dart';

class GeneralDataModel extends GeneralData {
  const GeneralDataModel({
     super.currentPage,
     super.hotelsList,
     super.firstPageUrl,
     super.from,
     super.lastPage,
     super.lastPageUrl,
     super.nextPageUrl,
     super.path,
     super.perPage,
     super.prevPageUrl,
     super.to,
     super.total,
  });

  factory GeneralDataModel.fromJson(Map<String,dynamic>json) => GeneralDataModel(
    currentPage:json['current_page'] ,
    hotelsList: json['data'].map((hotel)=>HotelModel.fromJson(hotel)).toList(),
    //hotelsList: List<HotelModel>.from(json["data"].map((x) => HotelModel.fromJson(x))),
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
