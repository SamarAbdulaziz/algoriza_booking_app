import 'package:flutter/material.dart';

class HotelPressed extends StatelessWidget {
  const HotelPressed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/hotel-grand-royal.jpg',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            const Text(
              'Name Of Hotel',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.teal,
                ),
                child: Text(
                  'Book now',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Text(
              '\$180',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
            ),
            Text(
              '\/per night',
              style: TextStyle(
                  fontSize: 14, color: Colors.white),
            ),

          ],
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            const  Text(
              'sleep 2 people + 2 children',
              style: TextStyle(
                  fontSize: 13, color: Colors.grey),
            ),
            InkWell(
              onTap: (){},
              child: Row(
                children: [
                  Text(
                    'More Details',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 14, color: Colors.white),
                  ),
                  Icon(Icons.keyboard_arrow_down,color: Colors.white,)
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10,),

      ],
    );
  }
}
