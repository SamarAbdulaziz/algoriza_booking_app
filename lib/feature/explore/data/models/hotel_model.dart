import 'package:algoriza_booking_app/feature/explore/data/models/hotel_facilities_model.dart';
import 'package:algoriza_booking_app/feature/explore/data/models/hotel_image_model.dart';
import 'package:algoriza_booking_app/feature/explore/domain/entities/hotel.dart';

class HotelModel extends Hotel {
  const HotelModel(
      { super.id,
       super.name,
       super.description,
       super.price,
       super.address,
       super.longitude,
       super.latitude,
       super.rate,
       super.createdAt,
       super.updatedAt,
       super.hotelImageList,
       super.hotelFacilitiesList,});
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
    //hotelImageList: json['hotel_images'].map((e)=>HotelImageModel.fromJson(e)).toList(),
    //hotelFacilitiesList:json['hotel_facilities'].map((e)=>HotelFacilitiesModel.fromJson(e)).toList() ,
    hotelImageList: List<HotelImageModel>.from(json["hotel_images"].map((x) => HotelImageModel.fromJson(x))),
    hotelFacilitiesList: List<HotelFacilitiesModel>.from(json["hotel_facilities"].map((x) => HotelFacilitiesModel.fromJson(x))),

//      genres:List<GenresModel>.from(json['genres'].map((e)=>GenresModel.fromJson(e))),
//     forecastDay: List<Forecastday>.from(
//         json["forecastday"].map((x) => ForecastdayModel.fromJson(x))),

  );
}
