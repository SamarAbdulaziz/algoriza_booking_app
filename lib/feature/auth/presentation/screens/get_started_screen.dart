import 'package:algoriza_booking_app/config/routes/app_routes.dart';
import 'package:algoriza_booking_app/feature/auth/presentation/components/login_button.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Column(children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/GetStarted.jpg'),
                      fit: BoxFit.cover
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Motel',
                            style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,),),
                          SizedBox(height: 20,),
                          Text('Best hotel deals for your holiday', style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w400,wordSpacing: 1),),
                          SizedBox(height: 170,),
                        ],
                      ),
                    ),
                    DefaultButton(
                      title: 'Get Started',
                      ontap: () {
                        Navigator.pushNamed(context, Routes.onBoardingRoute);
                      },
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have account?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                        TextButton(
                          child:Text('Login',
                            style: TextStyle(
                              color: Colors.teal.shade200,
                              fontWeight: FontWeight.bold,),),
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.loginScreenRoute);
                          },
                        ),

                      ],
                    )
                  ],),
              ),

            ),
          ),
        ]
        )
    );
  }
}
