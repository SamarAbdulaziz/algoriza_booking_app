import 'package:algoriza_booking_app/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/utiles/default_text_font.dart';
import '../../data/models/onboarding_model.dart';
import '../components/login_button.dart';
import 'login_screen.dart';

// ignore: must_be_immutable
class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  var boarderController = PageController();
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: DefaultButton(
                title: 'Skip',
                ontap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                textcolor: Colors.white,
                buttoncolor: Colors.teal,
                circularRadius: 20.0,
                width: 70,

              )
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) =>
                  buildBoardingItem(onboardingItems[index]),
              controller: boarderController,
              itemCount: onboardingItems.length,
              physics: const BouncingScrollPhysics(),
              onPageChanged: (int index) {
                if (index == onboardingItems.length - 1) {
                  isLast = true;
                } else {
                  isLast = false;
                }
              },
            ),
          ),
          Column(
            children: [
              SmoothPageIndicator(
                controller: boarderController,
                count: onboardingItems.length,
                effect: const SwapEffect(
                  activeDotColor: Colors.teal,
                  dotHeight: 10.0,
                  dotWidth: 10.0,
                  //expansionFactor: 4,
                  //spacing: 5
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: DefaultButton(
                    buttoncolor: Colors.teal,
                    title: 'Login',
                    ontap: () {
                      // boardcontroller.nextPage(
                      //  duration: Duration(milliseconds: 750),
                      //curve: Curves.fastLinearToSlowEaseIn);
                      // if (islast) {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => LoginScreen()));
                      // }
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const LoginScreen()));
                      Navigator.pushNamed(context, Routes.loginScreenRoute);
                    },
                  )),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: DefaultButton(
                    buttoncolor: Colors.grey.shade900,
                    title: 'Create account',
                    ontap: () {
                      // boardcontroller.nextPage(
                      //     duration: Duration(milliseconds: 750),
                      //     curve: Curves.fastLinearToSlowEaseIn);
                      // if(islast){
                      //   Navigator.push(context,
                      //       MaterialPageRoute(builder: (context) =>RegisterScreen() ));
                      // }
                      Navigator.pushNamed(context, Routes.registerScreenRoute);
                    },
                  )),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

List<onBoradingModel> onboardingItems = [
  onBoradingModel(
      Text: 'Best travelling all time',
      body:
          'Find deals for any season from cosy\n country homes to city flats\n ',
      image: 'assets/images/travelud-onboarding1.png'),
  onBoradingModel(
      Text: 'Find best deals',
      body:
          'Find deals for any season from cosy\n country homes to city flats\n',
      image: 'assets/images/travel-onboarding2.png'),
  onBoradingModel(
      Text: 'Plan your trips',
      body: 'Book one of your unique hotels to\n escape the ordinary\n ',
      image: 'assets/images/travel_onboarding3.png')
];

Widget buildBoardingItem(onBoradingModel model) => Column(
      children: [
        Image(
          image: AssetImage(
            '${model.image}',
          ),
          height: 300,
          width: 300,
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                DefaultTextFont(
                  title: model.Text!,
                  size: 25,
                  fontweight: FontWeight.bold,
                  titlecolor: Colors.white,
                  height: 1.4,
                  titleAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                DefaultTextFont(
                  title: model.body!,
                  size: 15,
                  fontweight: FontWeight.w600,
                  titlecolor: Colors.grey.shade500,
                  height: 1.4,
                  titleAlign: TextAlign.center,
                ),
              ],
            ),
      ),
    )
  ],
);