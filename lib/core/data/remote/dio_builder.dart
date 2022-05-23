import 'package:custodia_movies/core/data/remote/interceptors/loading_interceptor.dart';
import 'package:dio/dio.dart';

Dio buildDioClient(String base) {
  final dio = Dio()..options = BaseOptions(baseUrl: base);

  dio.interceptors.addAll(
    [
      LoadingInterceptor(),
    ],
  );

  return dio;
}