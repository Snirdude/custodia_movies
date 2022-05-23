// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResultsModel _$SearchResultsModelFromJson(Map<String, dynamic> json) {
  return _SearchResultsModel.fromJson(json);
}

/// @nodoc
mixin _$SearchResultsModel {
  @JsonKey(name: 'Search')
  List<MovieModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultsModelCopyWith<SearchResultsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultsModelCopyWith<$Res> {
  factory $SearchResultsModelCopyWith(
          SearchResultsModel value, $Res Function(SearchResultsModel) then) =
      _$SearchResultsModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'Search') List<MovieModel> results});
}

/// @nodoc
class _$SearchResultsModelCopyWithImpl<$Res>
    implements $SearchResultsModelCopyWith<$Res> {
  _$SearchResultsModelCopyWithImpl(this._value, this._then);

  final SearchResultsModel _value;
  // ignore: unused_field
  final $Res Function(SearchResultsModel) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchResultsModelCopyWith<$Res>
    implements $SearchResultsModelCopyWith<$Res> {
  factory _$$_SearchResultsModelCopyWith(_$_SearchResultsModel value,
          $Res Function(_$_SearchResultsModel) then) =
      __$$_SearchResultsModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'Search') List<MovieModel> results});
}

/// @nodoc
class __$$_SearchResultsModelCopyWithImpl<$Res>
    extends _$SearchResultsModelCopyWithImpl<$Res>
    implements _$$_SearchResultsModelCopyWith<$Res> {
  __$$_SearchResultsModelCopyWithImpl(
      _$_SearchResultsModel _value, $Res Function(_$_SearchResultsModel) _then)
      : super(_value, (v) => _then(v as _$_SearchResultsModel));

  @override
  _$_SearchResultsModel get _value => super._value as _$_SearchResultsModel;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_SearchResultsModel(
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResultsModel implements _SearchResultsModel {
  _$_SearchResultsModel(
      {@JsonKey(name: 'Search') final List<MovieModel> results = const []})
      : _results = results;

  factory _$_SearchResultsModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResultsModelFromJson(json);

  final List<MovieModel> _results;
  @override
  @JsonKey(name: 'Search')
  List<MovieModel> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'SearchResultsModel(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResultsModel &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_SearchResultsModelCopyWith<_$_SearchResultsModel> get copyWith =>
      __$$_SearchResultsModelCopyWithImpl<_$_SearchResultsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResultsModelToJson(this);
  }
}

abstract class _SearchResultsModel implements SearchResultsModel {
  factory _SearchResultsModel(
          {@JsonKey(name: 'Search') final List<MovieModel> results}) =
      _$_SearchResultsModel;

  factory _SearchResultsModel.fromJson(Map<String, dynamic> json) =
      _$_SearchResultsModel.fromJson;

  @override
  @JsonKey(name: 'Search')
  List<MovieModel> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResultsModelCopyWith<_$_SearchResultsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
