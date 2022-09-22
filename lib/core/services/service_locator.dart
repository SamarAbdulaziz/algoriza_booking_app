import 'package:algoriza_booking_app/feature/Profile_info/data/data_source/remote_profile_data_source.dart';
import 'package:algoriza_booking_app/feature/Profile_info/data/repository/profile_repository.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/repository/base_profile_repository.dart';
import 'package:algoriza_booking_app/feature/Profile_info/domain/usecases/get_profile_info.dart';
import 'package:algoriza_booking_app/feature/Profile_info/presentaion/controllers/profile_cubit.dart';
import 'package:algoriza_booking_app/feature/auth/data/data_source/remote_data_source.dart';
import 'package:algoriza_booking_app/feature/auth/data/repository/auth_repository.dart';
import 'package:algoriza_booking_app/feature/auth/domain/repository/base_auth_repository.dart';
import 'package:algoriza_booking_app/feature/auth/domain/usecases/login_use_case.dart';
import 'package:algoriza_booking_app/feature/auth/domain/usecases/register_use_case.dart';
import 'package:get_it/get_it.dart';

import '../../feature/auth/presentation/controllers/auth_cubit.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    ///Data
    sl.registerLazySingleton<BaseRemoteDataSource>(() => RemoteDataSource());
    sl.registerLazySingleton<BaseRemoteProfileDataSource>(
        () => RemoteProfileDataSource());
    //
    ///Repo
    sl.registerLazySingleton<BaseAuthRepository>(
        () => AuthenticationRepository(sl()));
    sl.registerLazySingleton<BaseProfileRepository>(
        () => ProfileInfoRepository(sl()));
    //
    ///UseCases
    sl.registerLazySingleton<LoginUseCase>(() => LoginUseCase(sl()));
    sl.registerLazySingleton<RegisterUseCase>(() => RegisterUseCase(sl()));
    sl.registerLazySingleton<GetProfileInfoUseCase>(
        () => GetProfileInfoUseCase(sl()));
    //
    ///Bloc-cubit
    sl.registerFactory<AuthenticationCubit>(
        () => AuthenticationCubit(sl(), sl()));
    sl.registerFactory<ProfileCubit>(() => ProfileCubit(sl()));
  }
}
