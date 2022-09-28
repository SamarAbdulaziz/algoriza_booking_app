import 'package:algoriza_booking_app/feature/auth/presentation/components/login_button.dart';
import 'package:flutter/material.dart';

class ProfileInviteFriendScreen extends StatelessWidget {
  const ProfileInviteFriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Image.asset('assets/images/invitefriend-removebg-preview.png'),
                    Text('Invite your Friend',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                    SizedBox(height: 10,),
                    Text('are you one of those who makes everything\nat the last moment',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey.shade300,fontWeight: FontWeight.w400,fontSize: 15),),


                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Center(
                    child: DefaultButton(title: 'Share',width: 150,
                        ontap: (){}
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
