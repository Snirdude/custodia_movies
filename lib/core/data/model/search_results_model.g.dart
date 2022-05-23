// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResultsModel _$$_SearchResultsModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchResultsModel(
      results: (json['Search'] as List<dynamic>?)
              ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SearchResultsModelToJson(
        _$_SearchResultsModel instance) =>
    <String, dynamic>{
      'Search': instance.results,
    };
