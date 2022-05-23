import 'package:custodia_movies/core/change_notifiers/loading_notifier.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/remote/dio_builder.dart';
import '../data/remote/remote_config.dart';
import '../data/remote/rest_client.dart';

final sl = GetIt.I;

void initLocator() {
  //Loading
  sl.registerLazySingleton<LoadingNotifier>(() => LoadingNotifier());

  // Rest
  final dio = buildDioClient(RemoteConfig.url);
  sl.registerLazySingleton<RestClient>(() => RestClient(dio));
}
