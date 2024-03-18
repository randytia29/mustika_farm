import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:mustika_farm/features/cage/domain/usecases/get_cage.dart';
import 'package:mustika_farm/features/cage/presentation/cubit/active_cage_cubit.dart';
import 'package:mustika_farm/features/cage/presentation/cubit/rest_cage_cubit.dart';

import 'features/cage/data/datasources/cage_remote_data_source.dart';
import 'features/cage/data/repositories/cage_repository_impl.dart';
import 'features/cage/domain/repositories/cage_repository.dart';
import 'features/home/data/datasources/home_remote_data_source.dart';
import 'features/home/data/repositories/home_repository_impl.dart';
import 'features/home/domain/repositories/home_repository.dart';
import 'features/home/domain/usecases/get_user.dart';
import 'features/home/presentation/cubit/user_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features
  // Bloc

  // Home
  sl.registerFactory(() => UserCubit(getUser: sl()));

  // Cage
  sl.registerFactory(() => ActiveCageCubit(getCage: sl()));
  sl.registerFactory(() => RestCageCubit(getCage: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetUser(sl()));
  sl.registerLazySingleton(() => GetCage(sl()));

  // Repository
  sl.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<CageRepository>(
      () => CageRepositoryImpl(remoteDataSource: sl()));

  // Data sources
  sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<CageRemoteDataSource>(
      () => CageRemoteDataSourceImpl(client: sl()));

  //! External
  sl.registerLazySingleton(() => http.Client());
}
