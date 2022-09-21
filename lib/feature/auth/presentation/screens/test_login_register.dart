import 'package:algoriza_booking_app/feature/auth/presentation/controllers/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                BlocProvider.of<AuthenticationCubit>(context)
                    .loginByEmailAndPassword('Noor.Noor@gmail.com', '123456');
              },
              child: Text(
                'Login',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
            TextButton(
              onPressed: () {
                BlocProvider.of<AuthenticationCubit>(context)
                    .registerByEmailAndPassword('Noor','Noor.Noor@gmail.com', '123456','123456');
              },
              child: Text(
                'Register',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
