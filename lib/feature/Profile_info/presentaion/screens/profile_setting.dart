import 'package:flutter/material.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Setting',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 25,),
              Row(
                children: [
                  Text('Notifications',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
                  Spacer(),
                  Icon(Icons.notification_important_rounded,color: Colors.grey,size: 25,)

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
              ),
              Row(
                children: [
                  Text('Theme Mode',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
                  Spacer(),
                  Icon(Icons.dark_mode,color: Colors.grey,size: 25,)

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
              ),
              Row(
                children: [
                  Text('Fonts',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
                  Spacer(),
                  Icon(Icons.font_download,color: Colors.grey,size: 25,)

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
              ),
              Row(
                children: [
                  Text('Color',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
                  Spacer(),
                  Icon(Icons.color_lens,color: Colors.grey,size: 25,)

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
              ),
              Row(
                children: [
                  Text('Language',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
                  Spacer(),
                  Icon(Icons.language,color: Colors.grey,size: 25,)

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
              ),
              Row(
                children: [
                  Text('Country',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
                  Spacer(),
                  Text('Australia',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 15),),

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
              ),
              Row(
                children: [
                  Text('Currency',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
                  Spacer(),
                  Text('\$ AUD',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 15),),

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
              ),
              Row(
                children: [
                  Text('Terms of Services',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 25,)

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
              ),
              Row(
                children: [
                  Text('Privacy Policy',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 25,)

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
              ),
              Row(
                children: [
                  Text('Give Us Feedbacks',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 25,)

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
              ),
              Row(
                children: [
                  Text('Log out',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 25,)

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
