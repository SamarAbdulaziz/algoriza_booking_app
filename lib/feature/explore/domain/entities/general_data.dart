import 'package:algoriza_booking_app/feature/explore/domain/entities/hotel.dart';
import 'package:equatable/equatable.dart';

class GeneralData extends Equatable {
  final int? currentPage;
  final List<ExploreHotel>? hotelsList;
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

  const GeneralData({
    this.currentPage,
    this.hotelsList,
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
  List<Object?> get props =>
      [
        currentPage,
        hotelsList,
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
