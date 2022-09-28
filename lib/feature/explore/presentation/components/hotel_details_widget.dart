import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../auth/presentation/components/login_button.dart';
import 'hotel_details_photos_widget.dart';

class HotelDetailsWidget extends StatelessWidget {
  HotelDetailsWidget({Key? key,required this.size}) : super(key: key);
  Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Grand Royal Hotel',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
              Spacer(),
              Text('\$180',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),

            ],
          ),
          Row(
            children: [
              Text('Wembly,London',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),),
              Row(children: [
                Icon(Icons.location_on,color: Colors.teal,size: 15,),
                Text('3.0 km to city',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),),
              ],),
              Spacer(),
              Text('/per night',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),),



            ],

          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
          ),
          Text('Summary',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(child: RichText(
                  text: TextSpan(
                      text: 'Featuring a fitness center, Grand Royale Park Hote is Located in Sweden, 4.7 Km frome National Museum...',style: TextStyle(color: Colors.grey,wordSpacing:2,fontWeight: FontWeight.w400,fontSize: 15),
                      children: [
                        TextSpan(text: ' read more',style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w600,fontSize: 15))

                      ]
                  )
              ),

              )
            ],

          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(20)

              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('8.8',style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold,fontSize: 30),),
                        SizedBox(width: 10,),
                        Text('Overall rating',style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 15),),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(width:60,child: Text('Room',style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 15),)),
                        SizedBox(width: 10,),
                        Container(
                          height: 4,
                          width: size.width/1.7,
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        )

                      ],
                    ),
                    Row(
                      children: [
                        Container(width:60,child: Text('Services',style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 15),)),
                        SizedBox(width: 10,),
                        Container(
                          height: 4,
                          width: size.width/2,
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        )

                      ],
                    ),
                    Row(
                      children: [
                        Container(width:60,child: Text('Location',style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 15),)),
                        SizedBox(width: 10,),
                        Container(
                          height: 4,
                          width: size.width/2.3,
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        )

                      ],
                    ),
                    Row(
                      children: [
                        Container(width:60,child: Text('Price',style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 15),)),
                        SizedBox(width: 10,),
                        Container(
                          height: 4,
                          width: size.width/1.9,
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        )

                      ],
                    ),


                  ],

                ),
              ),),
          ),
          Row(
            children: [
              Text('Photo', style: TextStyle(color: Colors
                  .white, fontWeight: FontWeight.bold),),
              Spacer(),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text('View all'),
                      Icon(Icons.arrow_forward_sharp,size: 15,)
                    ],
                  )
              )
            ],
          ),
          HotelDetailsPhotos(),
          Row(
            children: [
              Text('Reviews', style: TextStyle(color: Colors
                  .white, fontWeight: FontWeight.bold),),
              Spacer(),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text('View all'),
                      Icon(Icons.arrow_forward_sharp,size: 15,)
                    ],
                  )
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                        child:  Image.asset('assets/images/profile1.jpg',fit: BoxFit.cover,),
                        width: 50,
                        height: 50,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Alexia Jane',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                              Text('Last Update 21 May,2019',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),),
                              Text('(8.0)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Text('This is located in a great spot close to shops and bars, very quiet location',
                style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 14),),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text('Reply'),
                          Icon(Icons.arrow_forward_sharp,size: 15,)
                        ],
                      )
                  )
                ],)


            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0),
            child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                        child:  Image.asset('assets/images/profile2.jpg',fit: BoxFit.cover,),
                        width: 50,
                        height: 50,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jacky Depp',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                              Text('Last Update 21 May,2019',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),),
                              Text('(8.0)',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Text('Good staff, very comfortable bed, very quiet location, place could do with an update ',
                style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 14),),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text('Reply'),
                          Icon(Icons.arrow_forward_sharp,size: 15,)
                        ],
                      )
                  )
                ],)


            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0),
            child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
          ),
          Image.asset('assets/images/location.jpg'),
          SizedBox(height: 20,),
          DefaultButton(
              title: 'Book now',
              ontap: (){
                Navigator.pushNamed(context, Routes.onHotelPressedScreen);

              })





        ],
      ),
    );
  }
}
