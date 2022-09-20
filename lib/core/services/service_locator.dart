import 'package:algoriza_booking_app/feature/auth/data/data_source/remote_data_source.dart';
import 'package:algoriza_booking_app/feature/auth/data/repository/auth_repository.dart';
import 'package:algoriza_booking_app/feature/auth/domain/repository/base_auth_repository.dart';
import 'package:algoriza_booking_app/feature/auth/domain/usecases/login_use_case.dart';
import 'package:algoriza_booking_app/feature/auth/domain/usecases/register_use_case.dart';
import 'package:algoriza_booking_app/feature/auth/presentaion/controllers/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    ///Data
    sl.registerLazySingleton<BaseRemoteDataSource>(() => RemoteDataSource());
    //
    ///Repo
    sl.registerLazySingleton<BaseAuthRepository>(
        () => AuthenticationRepository(sl()));
    //
    ///UseCases
    sl.registerLazySingleton<LoginUseCase>(() => LoginUseCase(sl()));
    sl.registerLazySingleton<RegisterUseCase>(() => RegisterUseCase(sl()));
    //
    ///Bloc-cubit
    sl.registerFactory<AuthenticationCubit>(
        () => AuthenticationCubit(sl(), sl()));
  }
}
