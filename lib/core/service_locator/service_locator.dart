import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/remote/remote_config.dart';
import '../data/remote/rest_client.dart';

final sl = GetIt.I;

void initLocator() {

  // Rest
  final dio = Dio()..options = BaseOptions(baseUrl: RemoteConfig.url);
  sl.registerLazySingleton<RestClient>(() => RestClient(dio));

}
