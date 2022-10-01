import 'package:algoriza_booking_app/feature/booking/presentation/components/hotel_pressed.dart';
import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../explore/domain/entities/hotel.dart';

class FavoriteWidget extends StatelessWidget {
   FavoriteWidget({Key? key,required this.hotel}) : super(key: key);
  ExploreHotel hotel;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, Routes.onHotelPressedScreen);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          width: double.infinity,
          height: 130,
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                child: Image.network('http://api.mahmoudtaha.com/images/${hotel.hotelImageList![0].image}',fit: BoxFit.cover,),
                width: 120,
                height: 130,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${hotel.name}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                              maxLines: 1,
                            ),
                            Text(
                              '${hotel.address}',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.teal,
                                      size: 15,
                                    ),
                                    Text(
                                      '3.0 km to city',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.teal,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.teal,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.teal,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.teal,
                                      size: 15,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey,
                                      size: 15,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                '\$${hotel.price}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                '/per night',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
