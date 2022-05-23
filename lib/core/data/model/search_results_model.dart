
// ignore_for_file: depend_on_referenced_packages, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_model.dart';

part 'search_results_model.freezed.dart';
part 'search_results_model.g.dart';

@freezed
class SearchResultsModel with _$SearchResultsModel {
  factory SearchResultsModel({@Default([]) @JsonKey(name: 'Search') List<MovieModel> results} ) = _SearchResultsModel;
	
  factory SearchResultsModel.fromJson(Map<String, dynamic> json) =>
			_$SearchResultsModelFromJson(json);
}
