import 'package:custodia_movies/core/data/remote/remote_config.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/')
  Future getMovieDetails({
    @Query('apikey') String apiKey = RemoteConfig.apiKey,
    @Query('i') String id = '',
    @Query('t') String name = '',
    @Query('type') String type = '',
    @Query('y') String year = '',
    @Query('plot') String plot = '',
  });

  @GET('/')
  Future searchMoviesAndSeries({
    @Query('apikey') String apiKey = RemoteConfig.apiKey,
    @Query('s') required String search,
    @Query('type') String type = '',
    @Query('y') String year = '',
    @Query('page') int page = 1
  });
}
