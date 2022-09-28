import 'package:flutter/material.dart';

import '../../../auth/presentation/components/login-text-form-field.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:   Column(
          children: [
            Material(
              elevation: 5,
              child: Container(
                color: Colors.teal,
                height: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back,color:Colors.white ,)
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('How can we help',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                          LoginTextFormField(
                            title: '',
                            hintText: 'Search help articales',
                            prefix: Icons.search,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('paying for a reservation',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                        SizedBox(height: 25,),
                        Row(
                          children: [
                            Text('How do i cancel my rooms reservation?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 13),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
                        ),
                        Row(
                          children: [
                            Text('What methods of payment does Roome accept?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 13),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
                        ),
                        Row(
                          children: [
                            Text('When am i charged for a reservation?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 13),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
                        ),
                        Row(
                          children: [
                            Text('How do i edit or remove a payment method?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 13),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
                        ),
                        SizedBox(height: 15,),
                        Text('Trust and Saftey',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                        SizedBox(height: 25,),
                        Row(
                          children: [
                            Text('I`m a guest. What are some saftey tips i can follow?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 13),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
                        ),
                        Row(
                          children: [
                            Text('When am i charged for a reservation?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 13),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
                        ),
                        Row(
                          children: [
                            Text('How do i edit or remove a payment method?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 13),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
                        ),
                        SizedBox(height: 15,),
                        Text('paying for a reservation',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                        SizedBox(height: 25,),
                        Row(
                          children: [
                            Text('How do i cancel my rooms reservation?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 13),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
                        ),
                        Row(
                          children: [
                            Text('What methods of payment does Roome accept?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 13),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
                        ),
                        Row(
                          children: [
                            Text('When am i charged for a reservation?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 13),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
                        ),
                        Row(
                          children: [
                            Text('How do i edit or remove a payment method?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 13),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
                        ),
                        SizedBox(height: 15,),
                        Text('Trust and Saftey',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                        SizedBox(height: 25,),
                        Row(
                          children: [
                            Text('I`m a guest. What are some saftey tips i can follow?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 13),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
                        ),
                        Row(
                          children: [
                            Text('When am i charged for a reservation?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 13),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Divider(color: Colors.grey.shade800,thickness: 1.5,),
                        ),
                        Row(
                          children: [
                            Text('How do i edit or remove a payment method?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 13),),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,)

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
            )
          ],
        ),

      ),
    );
  }
}
