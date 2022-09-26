import 'package:flutter/material.dart';

class UpComingWidget extends StatefulWidget {
  const UpComingWidget({Key? key}) : super(key: key);

  @override
  State<UpComingWidget> createState() => _UpComingWidgetState();
}

class _UpComingWidgetState extends State<UpComingWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/grand.jpg',
                      ),
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
                children: const [
                  Text(
                    'Grand Royal Hotel',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  Text(
                    '\$180',
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
                              Text(
                                'Wembley, London ',
                                style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
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
    );
  }
}
