import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:project4_mobile/data/datasources/auth/auth_remote_data_source.dart';
import 'package:project4_mobile/data/datasources/auth/auth_remote_data_source_impl.dart';
import 'package:project4_mobile/data/repositories/auth_repo_impl.dart';
import 'package:project4_mobile/domain/repositories/auth_repo.dart';

final getIt = GetIt.instance;

void init() {
  //repository
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(dataAuth: getIt()));

  //datasource
  getIt.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(client: getIt()));

  // http service
  getIt.registerLazySingleton(() => http.Client());
}
