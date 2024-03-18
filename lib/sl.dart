import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:mustika_farm/features/cage/domain/usecases/get_cage.dart';
import 'package:mustika_farm/features/cage/presentation/cubit/active_cage_cubit.dart';
import 'package:mustika_farm/features/cage/presentation/cubit/rest_cage_cubit.dart';

import 'features/cage/data/datasources/cage_remote_data_source.dart';
import 'features/cage/data/repositories/cage_repository_impl.dart';
import 'features/cage/domain/repositories/cage_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features
  // Bloc

  // Cage
  sl.registerFactory(() => ActiveCageCubit(getCage: sl()));
  sl.registerFactory(() => RestCageCubit(getCage: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetCage(sl()));

  // Repository
  sl.registerLazySingleton<CageRepository>(
      () => CageRepositoryImpl(remoteDataSource: sl()));

  // Data sources
  sl.registerLazySingleton<CageRemoteDataSource>(
      () => CageRemoteDataSourceImpl(client: sl()));

  //! External
  sl.registerLazySingleton(() => http.Client());
}
