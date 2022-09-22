import 'package:algoriza_booking_app/feature/explore/domain/entities/hotel.dart';
import 'package:equatable/equatable.dart';

class GeneralData extends Equatable {
  final int currentPage;
  final List<Hotel> hotelsList;
  final String firstPageUrl;
  final int from;
  final int lastPage;
  final String lastPageUrl;
//  final List<Link> links;
  final dynamic nextPageUrl;
  final String path;
  final int perPage;
  final dynamic prevPageUrl;
  final int to;
  final int total;

  const GeneralData({
    required this.currentPage,
    required this.hotelsList,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    // required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  @override
  List<Object> get props => [
        currentPage,
        hotelsList,
        firstPageUrl,
        from,
        lastPage,
        lastPageUrl,
        // links,
        nextPageUrl,
        path,
        perPage,
        prevPageUrl,
        to,
        total,
      ];
}
