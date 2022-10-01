import 'dart:ui';
import 'package:algoriza_booking_app/feature/auth/presentation/components/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:algoriza_booking_app/feature/explore/domain/entities/hotels.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../config/routes/app_routes.dart';
import '../../domain/entities/hotel.dart';
import '../components/hotel_details_widget.dart';
import '../controllers/hotels_cubit.dart';

class HotelDetails extends StatefulWidget {
  HotelDetails({Key? key,required this.hotel}) : super(key: key);
  final ExploreHotel hotel;

  @override
  State<HotelDetails> createState() => HotelDetailsState();
}

class HotelDetailsState extends State<HotelDetails> {
  ScrollController _controller = ScrollController();
  bool silverCollapsed = false;

  @override
  void initState() {


    super.initState();
    _controller = ScrollController();

    _controller.addListener(() {
      if (_controller.offset > 120 && !_controller.position.outOfRange) {
        if(!silverCollapsed){
          silverCollapsed = true;
          setState(() {});
        }
      }
      if (_controller.offset <= 320 && !_controller.position.outOfRange) {
        if(silverCollapsed){
          silverCollapsed = false;
          setState(() {});
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //int id= ModalRoute.of(context)!.settings.arguments;
    Size size = MediaQuery.of(context).size;
    print(size.height);
    return   Scaffold(
      body: NestedScrollView(
          controller: _controller,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: size.height,
                toolbarHeight: 90,
                collapsedHeight: 130,
                elevation: 100,
                automaticallyImplyLeading: false,
                title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,), onPressed: () {  },),
                          decoration: BoxDecoration(
                              color: Colors.white38,
                              shape: BoxShape.circle
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: IconButton(icon: Icon(Icons.favorite_border,color: Colors.teal,), onPressed: () {  },),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle
                          ),
                        )

                      ],
                    )
                ),
                pinned: true,
                //floating: true,
                //snap: true,
                flexibleSpace:  Stack(
                    children: [
                      Positioned.fill(
                        child:  Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage('http://api.mahmoudtaha.com/images/${widget.hotel.hotelImageList![0].image}'),
                                  fit: BoxFit.cover
                              )
                          ),


                        ),
                      ),
                    ]
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(0.0),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Transform.translate(
                      offset: const Offset(0, 0),
                      child: Visibility(
                        visible: silverCollapsed ? false : true,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 16),
                          child: Column(
                            children: [
                              Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 170,
                                      decoration: BoxDecoration(
                                        color: Colors.white10,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('${widget.hotel.name}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),maxLines:1 ,),
                                            Row(
                                              children: [
                                                Container(width:120,child: Text('${widget.hotel.address}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),maxLines: 1,)),
                                                Row(children: [
                                                  Icon(Icons.location_on,color: Colors.teal,size: 15,),
                                                  Text('3.0 km to city',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),

                                                ],),
                                                Spacer(),
                                                Text('\$${widget.hotel.price}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),



                                              ],

                                            ),

                                            Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(Icons.star,color: Colors.teal,size: 15,),
                                                    Icon(Icons.star,color: Colors.teal,size: 15,),
                                                    Icon(Icons.star,color: Colors.teal,size: 15,),
                                                    Icon(Icons.star,color: Colors.teal,size: 15,),
                                                    Icon(Icons.star,color: Colors.grey,size: 15,),


                                                  ],
                                                ),
                                                SizedBox(width: 5,),
                                                Text('80Reviews',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
                                                Spacer(),
                                                Text('/per night',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),

                                              ],
                                            ),
                                            SizedBox(height: 10,),
                                            DefaultButton(
                                                title: 'Book now',
                                                ontap: (){
                                                //  Navigator.pushNamed(context, Routes.onHotelPressedScreen);
                                                 // BlocProvider.of<BookingCubit>(context).createBooking(hotelId: id);
                                                }
                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                                    child: Container(
                                      width: 140,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: Colors.white10,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('More details',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                                            Icon(Icons.keyboard_arrow_down,color: Colors.white,size: 18,),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body:  SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: HotelDetailsWidget(size:size,hotel : widget.hotel)
              )
          )


      ),
    );

  }
}
