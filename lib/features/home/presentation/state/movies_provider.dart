import 'package:custodia_movies/core/data/model/movie_model.dart';
import 'package:custodia_movies/core/data/model/movie_type.dart';
import 'package:dartz/dartz.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/data/remote/rest_client.dart';
import '../../../../core/service_locator/service_locator.dart';

class MoviesProvider extends ChangeNotifier {
  List<MovieModel> movies = [];
  MovieModel? currentMovie;

  final _restClient = sl<RestClient>();

  Future<Either<String, List<MovieModel>>> searchMovies(
      String query, MovieType type) async {
    try {
      final resultsModel = await _restClient.searchMoviesAndSeries(
          search: query, type: EnumToString.convertToString(type));
      movies = resultsModel.results;
    } catch (e) {
      return left(e.toString());
    }
    notifyListeners();
    return right(movies);
  }

  Future<Either<String, MovieModel>> getMovieDetails(String id) async {
    try {
      currentMovie = await _restClient.getMovieDetails(id: id, plot: 'full');
    } catch (e) {
      return left(e.toString());
    }
    notifyListeners();
    return right(currentMovie!);
  }
}
