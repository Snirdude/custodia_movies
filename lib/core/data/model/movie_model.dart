// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  factory MovieModel({
    @Default('') @JsonKey(name: 'Title') String title,
    @Default('') @JsonKey(name: 'Year') String year,
    @Default('') @JsonKey(name: 'Rated') String rated,
    @Default('') @JsonKey(name: 'Released') String released,
    @Default('') @JsonKey(name: 'Runtime') String runtime,
    @Default('') @JsonKey(name: 'Genre') String genre,
    @Default('') @JsonKey(name: 'Director') String director,
    @Default('') @JsonKey(name: 'Writer') String writer,
    @Default('') @JsonKey(name: 'Actors') String actors,
    @Default('') @JsonKey(name: 'Plot') String plot,
    @Default('') @JsonKey(name: 'Language') String language,
    @Default('') @JsonKey(name: 'Country') String country,
    @Default('') @JsonKey(name: 'Awards') String awards,
    @Default('') @JsonKey(name: 'Poster') String poster,
    @Default('') @JsonKey(name: 'Metascore') String metascore,
    @Default('') @JsonKey(name: 'imdbRating') String imdbRating,
    @Default('') @JsonKey(name: 'imdbVotes') String imdbVotes,
    @Default('') @JsonKey(name: 'Type') String type,
    @Default('') @JsonKey(name: 'BoxOffice') String boxOffice,
    @Default('') @JsonKey(name: 'totalSeasons') String totalSeasons,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
