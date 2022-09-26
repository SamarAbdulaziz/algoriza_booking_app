import 'package:flutter/material.dart';

class PopularDestinationBuilder extends StatelessWidget {
   PopularDestinationBuilder({Key? key}) : super(key: key);
  final countrynames =['KOREA','ITALY','EGYPT','JAPAN','CHINA','FRANCE','GERMANY','CANADA','SPAIN'];
  final citynames =['Paris','Madrid','Seoul','Rome','Giza','Tokyo','Beijing','Berlin','Ottawa'];
  final countryimages= ['assets/images/france paris.jpg','assets/images/spain madrid.jpg','assets/images/han river korea.jpg','assets/images/italy rome.jpg','assets/images/pyramids.jpg',
    'assets/images/japan tokyo.jpg',
    'assets/images/china beijing.jpg','assets/images/germany berlimn.jpg','assets/images/canada ottawa.jpg'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: countrynames.length,
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 0,
              crossAxisCount: 1,
              childAspectRatio: (170/250)
          ),
          itemBuilder:( BuildContext context,int index) {
            return Container(
              //height: 50,
              //width: 50,
              margin: EdgeInsets.fromLTRB(0, 20, 20, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image :AssetImage('${countryimages[index]}',),
                    fit: BoxFit.cover
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${citynames[index]}',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ],),
              ),
            );
          }

      ),
    );
  }
}
