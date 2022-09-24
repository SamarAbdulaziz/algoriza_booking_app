import 'package:algoriza_booking_app/feature/booking/domain/entities/booked_hotel.dart';
import 'package:equatable/equatable.dart';

class GeneralBookingData extends Equatable {
  final int currentPage;
  final List<BookedHotel>? bookedHotelsList;
  final String? firstPageUrl;
  final int? from;
  final int? lastPage;
  final String? lastPageUrl;
//  final List<Link> links;
  final dynamic nextPageUrl;
  final String? path;
  final int? perPage;
  final dynamic prevPageUrl;
  final int? to;
  final int? total;

  const GeneralBookingData({
    required this.currentPage,
    this.bookedHotelsList,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    // required this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  @override
  List<Object?> get props => [
        currentPage,
        bookedHotelsList,
        firstPageUrl,
        from,
        lastPage,
        lastPageUrl,
        nextPageUrl,
        path,
        perPage,
        prevPageUrl,
        to,
        total,
      ];
}
