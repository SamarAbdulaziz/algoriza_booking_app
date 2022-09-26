import 'package:algoriza_booking_app/feature/Profile_info/presentaion/controllers/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = 'Profile Screen';

  const ProfileScreen({Key? key}) : super(key: key);

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
        ),
      ),
      body: Center(
          child: Container(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                BlocProvider.of<ProfileCubit>(context).getProfileInfoByToken();
              },
              child: Text(
                ' Get Profile info',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            TextButton(
              onPressed: () {
                BlocProvider.of<ProfileCubit>(context)
                    .uploadImage(ImageSource.gallery)
                    .then((value) {
                  BlocProvider.of<ProfileCubit>(context).updateProfileInfo(
                    name: 'Samar Abdulaziz',
                    email: 'sam.sam@gmail.com',
                    pickedImage: BlocProvider.of<ProfileCubit>(context).image,
                  );
                });
              },
              child: Text(
                'Update Profile info',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

// Future getImage() async {
//   File _image;
//   final picker = ImagePicker();
//
//   var _pickedFile = await picker.pickImage(
//       source: ImageSource.camera,
//       imageQuality: 50, // <- Reduce Image quality
//       maxHeight: 500,  // <- reduce the image size
//       maxWidth: 500);
//   _image = File(_pickedFile!.path);
//
//
//
//   _upload(_image);
//
// }
// void _upload(File file) async {
//   String fileName = file.path.split('/').last;
//
//   FormData data = FormData.fromMap({
//     "image": await MultipartFile.fromFile(
//       file.path,
//       filename: fileName,
//     ),
//   });
//
//   Dio dio = new Dio();
//
//   dio.post("http://192.168.43.225/api/media", data: data)
//       .then((response) => print(response))
//       .catchError((error) => print(error));
// }