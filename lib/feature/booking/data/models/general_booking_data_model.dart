import 'package:algoriza_booking_app/feature/booking/data/models/booked_hotel_model.dart';
import 'package:algoriza_booking_app/feature/booking/domain/entities/general_booking_data.dart';

class GeneralBookingDataModel extends GeneralBookingData {
  const GeneralBookingDataModel(
      {required super.currentPage,
      required super.bookedHotelsList,
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

  factory GeneralBookingDataModel.fromJson(Map<String, dynamic> json) =>
      GeneralBookingDataModel(
        currentPage: json["current_page"],
        bookedHotelsList: List<BookedHotelModel>.from(json["data"].map((x) => BookedHotelModel.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],);
}
