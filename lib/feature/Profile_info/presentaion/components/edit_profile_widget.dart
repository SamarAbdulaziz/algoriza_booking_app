import 'package:algoriza_booking_app/feature/Profile_info/presentaion/components/text_form_field_profile_edit.dart';
import 'package:algoriza_booking_app/feature/Profile_info/presentaion/controllers/profile_cubit.dart';
import 'package:algoriza_booking_app/feature/auth/presentation/components/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileWidget extends StatefulWidget {
  EditProfileWidget({Key? key}) : super(key: key);

  @override
  State<EditProfileWidget> createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<ProfileCubit>(context).getProfileInfoByToken();
  }

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<ProfileCubit>(context);
    return BlocBuilder<ProfileCubit, ProfileStates>(
      builder: (context, state) {
        if (state is ProfileInfoSuccessState) {
          nameController.text = state.profileInfo.data.name;
          emailController.text = state.profileInfo.data.email;
          phoneController.text = '010 9988 120';
          return Container(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                  Center(
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        cubit.image == null
                            ? CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    NetworkImage(state.profileInfo.data.image),
                                backgroundColor: Colors.transparent,
                              )
                            : Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: FileImage(cubit.image!),
                                      fit: BoxFit.fill),
                                ),
                              ),
                        CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.teal.shade200,
                            child: IconButton(
                              onPressed: () {
                                cubit.uploadImage(ImageSource.gallery);
                              },
                              icon: const Icon(
                                Icons.camera_alt,
                                size: 17,
                                color: Colors.black,
                              ),
                            ))
                      ],
                    ),
                  ),
                  TextFormFieldProfileEdit(
                    controller: nameController,
                    hintTitle: 'UserName',
                    //initialValue: state.profileInfo.data.name,

                    // suffixTitle: 'Amanda Jane',
                  ),
                  TextFormFieldProfileEdit(
                    controller: emailController,
                    hintTitle: 'Email',
                    //initialValue: state.profileInfo.data.email,
                    // suffixTitle: 'amanda@gmail.com ',
                  ),
                  TextFormFieldProfileEdit(
                    controller: phoneController,
                    hintTitle: 'Phone',
                    //initialValue: '+2 0100 9988 112',
                    // suffixTitle: '+66 688683976',
                  ),
                  // TextFormFieldProfileEdit(
                  //   controller:,
                  //   hintTitle: 'Date of Birth',
                  //   // suffixTitle: '20, Aug, 1998',
                  // ),
                  // TextFormFieldProfileEdit(
                  //   hintTitle: 'Address',
                  //   // suffixTitle: '123 Royal Street,New York',
                  // ),

                  DefaultButton(
                      title: 'Update',
                      ontap: () {
                        cubit
                            .updateProfileInfo(
                          name: nameController.text,
                          email: emailController.text,
                        )
                            .then((value) {
                          //cubit.getProfileInfoByToken();
                        });
                        Navigator.pop(context);
                      }),
                ],
              ),
            ),
          );
        }
        return Container(
            );
      },
    );
  }
}
