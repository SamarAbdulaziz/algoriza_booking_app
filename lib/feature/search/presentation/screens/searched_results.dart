import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SearchedResult extends StatelessWidget {
   SearchedResult({Key? key, this.hotels,}) : super(key: key);
   final hotels;
  var controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Results'
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.27,
            child: PageView.builder(
              controller: controller,
              itemCount:hotels.length ,
              itemBuilder: (context,index)=>Column(
                children: [
                  Image.asset(
                    'assets/images/hotel-grand-royal.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/2019-05-06-132655-IMG-20190506-WA0025.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/hotel-grand-royal (1).jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              // children: [
              //   Image.asset(
              //     'assets/images/hotel-grand-royal.jpg',
              //     width: double.infinity,
              //     fit: BoxFit.cover,
              //   ),
              //   Image.asset(
              //     'assets/images/2019-05-06-132655-IMG-20190506-WA0025.jpg',
              //     width: double.infinity,
              //     fit: BoxFit.cover,
              //   ),
              //   Image.asset(
              //     'assets/images/hotel-grand-royal (1).jpg',
              //     width: double.infinity,
              //     fit: BoxFit.cover,
              //   ),
              // ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SmoothPageIndicator(controller: controller, count: 3,effect: SwapEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Colors.teal
            ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Name Of Hotel',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
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
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              Text(
                '\/per night',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'sleep 2 people + 2 children',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      'More Details',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
