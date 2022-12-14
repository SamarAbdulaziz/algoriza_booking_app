import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:algoriza_booking_app/feature/explore/domain/entities/hotels.dart';
import 'package:algoriza_booking_app/feature/explore/domain/use_cases/explore_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../Profile_info/presentaion/screens/Profile_screen.dart';
import '../../../booking/domain/entities/hotel.dart';
import '../../../booking/presentation/screens/booking_screen.dart';
import '../../domain/entities/hotel.dart';
import '../screens/explore_screen.dart';

part 'hotels_state.dart';

class HotelsCubit extends Cubit<HotelsStates> {
  final ExploreHotelsUseCase exploreHotelsUseCase;

  HotelsCubit(this.exploreHotelsUseCase) : super(HotelsInitial());

  static HotelsCubit get(context) => BlocProvider.of<HotelsCubit>(context);


  Future<void> exploreHotels({int? count, int? page}) async {
    emit(HotelsLoadingState());

    Either<Failure, Hotels> response =
        await exploreHotelsUseCase(count: count, page: page);
    response.fold((failure) => emit(HotelsErrorState(message: failure.massage)),
        (hotels) => emit(HotelsLoadedState(hotels: hotels)));
  }

 // late ExploreHotel hotelDetails;
   late int Selectedindex;
  int currentindexnavbar = 0;

  List<Widget> screenNavigationbar = [
    ExploreScreen(),
    BookingScreen(),
    ProfileScreen(),
  ];

  void changebottomnavifationbar(int index) {
    currentindexnavbar = index;
    emit(NavigationBarState());
  }

  bool isEnd = false;

  void toggleIsEnd(){
    isEnd!=isEnd;
    emit(ToggleIsEndState());
  }
}
