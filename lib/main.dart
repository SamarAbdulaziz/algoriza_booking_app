import 'package:algoriza_booking_app/booking_app.dart';
import 'package:algoriza_booking_app/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/utiles/local_data_source.dart';
import 'feature/Profile_info/presentaion/controllers/bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().init();
  Bloc.observer = MyBlocObserver();
  CacheData.init();
  runApp(const BookingApp());
}
