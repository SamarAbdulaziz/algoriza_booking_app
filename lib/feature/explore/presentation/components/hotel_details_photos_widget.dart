import 'package:flutter/material.dart';

class HotelDetailsPhotos extends StatelessWidget {
   HotelDetailsPhotos({Key? key}) : super(key: key);
  final countryimages= ['assets/images/hotel-grand-royal.jpg','assets/images/2019-05-06-132655-IMG-20190506-WA0025.jpg','assets/images/hotel-grand-royal (1).jpg'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: countryimages.length,
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 0,
              crossAxisCount: 1,
              childAspectRatio: (160/150)
          ),
          itemBuilder:( BuildContext context,int index) {
            return Container(
              //height: 50,
              //width: 50,
              margin: EdgeInsets.fromLTRB(0, 20, 20, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image :AssetImage('${countryimages[index]}',),
                    fit: BoxFit.cover
                ),
              ),

            );
          }

      ),
    );
  }
}
