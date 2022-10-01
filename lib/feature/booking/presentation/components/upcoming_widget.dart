import 'package:algoriza_booking_app/feature/booking/domain/entities/booked_hotel.dart';
import 'package:algoriza_booking_app/feature/booking/presentation/components/hotel_pressed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../explore/domain/entities/hotel.dart';

class UpComingWidget extends StatefulWidget {
   UpComingWidget({Key? key,required this.hotel}) : super(key: key);
  ExploreHotel hotel;

  @override
  State<UpComingWidget> createState() => _UpComingWidgetState();
}

class _UpComingWidgetState extends State<UpComingWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, Routes.onHotelPressedScreen);
      },
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            '01 Sep - 05 Sep, 1 Room 2 People',
            style: TextStyle(fontSize: 12, color: Colors.grey.shade300),
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              ClipRect(
                child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image:  DecorationImage(
                        image: NetworkImage('http://api.mahmoudtaha.com/images/${widget.hotel.hotelImageList![0].image}'),
                        fit: BoxFit.fill,
                      ),
                    )),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80), color: Colors.black),
                child: const Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.teal,
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Flexible(
                      flex:4,
                      child: Text(
                        '${widget.hotel.name}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                      ),
                    ),
                    Text(
                      '\$${widget.hotel.price}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width:150,
                                  child: Text(
                                    '${widget.hotel.address} ',
                                    style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                                    overflow: TextOverflow.fade,
                                    maxLines: 1,
                                  ),
                                ),
                                Icon(Icons.location_on,color: Colors.teal,size: 18,),
                                Text(
                                  '2.0 km to...',
                                  style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                     Text(
                      '\/per night',
                      style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
                    ),
                  ],
                ),
                Row(children: [
                  Icon(Icons.star,color: Colors.teal,size: 20,),
                  Icon(Icons.star,color: Colors.teal,size: 20,),
                  Icon(Icons.star,color: Colors.teal,size: 20,),
                  Icon(Icons.star,color: Colors.teal,size: 20,),
                  Icon(Icons.star,color: Colors.grey,size: 20,),
                  SizedBox(width: 8,),
                  Text(
                    '80Reviews',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                  ),

                ],),
                const SizedBox(height: 10,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
