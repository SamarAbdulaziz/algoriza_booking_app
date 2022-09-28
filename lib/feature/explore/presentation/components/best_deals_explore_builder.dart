import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../config/routes/app_routes.dart';
import '../../domain/entities/hotel.dart';

class ExploreBuilderWidget extends StatelessWidget {
   ExploreBuilderWidget({Key? key,required this.hotel}) : super(key: key);
  Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, Routes.hotelDetails);
        //Navigator.push(context, MaterialPageRoute(builder: (context) => test()));
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
                child: (hotel.hotelImageList!.isEmpty)? Image.asset('assets/images/GetStarted.jpg',fit: BoxFit.cover,) : Image.network('http://api.mahmoudtaha.com/images/${hotel.hotelImageList![0].image}',fit: BoxFit.fitWidth,),
                width: 120,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
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
                            ),
                            Text(
                              '${hotel.address}',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
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

                                  children: const [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.teal,
                                      size: 15,
                                    ),
                                    Text(
                                      '3.0 km to city',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                RatingBar.builder(
                                  initialRating: double.parse(hotel.rate!) / 2,
                                  ignoreGestures: true,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 16.0,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.teal,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
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
                                  fontSize: 20,
                                ),
                              ),
                              const Text(
                                '/per night',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
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
