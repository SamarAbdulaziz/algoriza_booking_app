import 'package:algoriza_booking_app/feature/explore/data/models/hotel_facilities_model.dart';
import 'package:algoriza_booking_app/feature/explore/data/models/hotel_image_model.dart';
import 'package:algoriza_booking_app/feature/explore/domain/entities/hotel.dart';

class HotelModel extends Hotel {
  const HotelModel(
      {required super.id,
      required super.name,
      required super.description,
      required super.price,
      required super.address,
      required super.longitude,
      required super.latitude,
      required super.rate,
      required super.createdAt,
      required super.updatedAt,
      required super.hotelImageList,
      required super.hotelFacilitiesList,});
  factory HotelModel.fromJson(Map<String,dynamic>json)=>HotelModel(
    id: json['id'],
    name: json['name'],
    description:json['description'] ,
    price:json['price'],
    address: json['address'] ,
    longitude: json['longitude'],
    latitude: json['latitude'],
    rate: json['rate'],
    createdAt:json['createdAt'],
    updatedAt:json['updatedAt'],
    hotelImageList: json['hotel_images'].map((e)=>HotelImageModel.fromJson(e)).toList(),
    hotelFacilitiesList:json['hotel_facilities'].map((e)=>HotelFacilitiesModel.fromJson(e)).toList() ,
    //hotelImages: List<HotelImageModel>.from(json["hotel_images"].map((x) => HotelFacilityElement.fromJson(x))),
   // hotelFacilities: List<HotelFacilityElement>.from(json["hotel_facilities"].map((x) => HotelFacilityElement.fromJson(x))),

//      genres:List<GenresModel>.from(json['genres'].map((e)=>GenresModel.fromJson(e))),
//     forecastDay: List<Forecastday>.from(
//         json["forecastday"].map((x) => ForecastdayModel.fromJson(x))),

  );
}
