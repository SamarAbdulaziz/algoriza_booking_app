import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    // ///Data
    // sl.registerLazySingleton<BaseRemoteDataSourceNew>(() => RemoteDataSourceNew());
    //
    // ///Repo
    // sl.registerLazySingleton<BaseWeatherRepositoryNew>(
    //     () => WeatherRepositoryNew(sl()));
    //
    // ///UseCases
    // sl.registerLazySingleton<GetWeatherByCityNameUseCaseNew>(
    //     () => GetWeatherByCityNameUseCaseNew(sl()));
    //
    // ///Bloc-cubit
    // sl.registerFactory<NewWeatherCubit>(() => NewWeatherCubit(sl()));
  }
}
