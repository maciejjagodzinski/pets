// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pets_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PetsState {
  List<PetModel> get petsModels => throw _privateConstructorUsedError;
  List<PetModel> get searchResult => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PetsStateCopyWith<PetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetsStateCopyWith<$Res> {
  factory $PetsStateCopyWith(PetsState value, $Res Function(PetsState) then) =
      _$PetsStateCopyWithImpl<$Res, PetsState>;
  @useResult
  $Res call(
      {List<PetModel> petsModels,
      List<PetModel> searchResult,
      String? errorMessage,
      bool isLoading});
}

/// @nodoc
class _$PetsStateCopyWithImpl<$Res, $Val extends PetsState>
    implements $PetsStateCopyWith<$Res> {
  _$PetsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? petsModels = null,
    Object? searchResult = null,
    Object? errorMessage = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      petsModels: null == petsModels
          ? _value.petsModels
          : petsModels // ignore: cast_nullable_to_non_nullable
              as List<PetModel>,
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<PetModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PetsStateCopyWith<$Res> implements $PetsStateCopyWith<$Res> {
  factory _$$_PetsStateCopyWith(
          _$_PetsState value, $Res Function(_$_PetsState) then) =
      __$$_PetsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PetModel> petsModels,
      List<PetModel> searchResult,
      String? errorMessage,
      bool isLoading});
}

/// @nodoc
class __$$_PetsStateCopyWithImpl<$Res>
    extends _$PetsStateCopyWithImpl<$Res, _$_PetsState>
    implements _$$_PetsStateCopyWith<$Res> {
  __$$_PetsStateCopyWithImpl(
      _$_PetsState _value, $Res Function(_$_PetsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? petsModels = null,
    Object? searchResult = null,
    Object? errorMessage = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_PetsState(
      petsModels: null == petsModels
          ? _value._petsModels
          : petsModels // ignore: cast_nullable_to_non_nullable
              as List<PetModel>,
      searchResult: null == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<PetModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PetsState implements _PetsState {
  const _$_PetsState(
      {required final List<PetModel> petsModels,
      required final List<PetModel> searchResult,
      this.errorMessage,
      required this.isLoading})
      : _petsModels = petsModels,
        _searchResult = searchResult;

  final List<PetModel> _petsModels;
  @override
  List<PetModel> get petsModels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_petsModels);
  }

  final List<PetModel> _searchResult;
  @override
  List<PetModel> get searchResult {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  final String? errorMessage;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'PetsState(petsModels: $petsModels, searchResult: $searchResult, errorMessage: $errorMessage, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetsState &&
            const DeepCollectionEquality()
                .equals(other._petsModels, _petsModels) &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_petsModels),
      const DeepCollectionEquality().hash(_searchResult),
      errorMessage,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PetsStateCopyWith<_$_PetsState> get copyWith =>
      __$$_PetsStateCopyWithImpl<_$_PetsState>(this, _$identity);
}

abstract class _PetsState implements PetsState {
  const factory _PetsState(
      {required final List<PetModel> petsModels,
      required final List<PetModel> searchResult,
      final String? errorMessage,
      required final bool isLoading}) = _$_PetsState;

  @override
  List<PetModel> get petsModels;
  @override
  List<PetModel> get searchResult;
  @override
  String? get errorMessage;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_PetsStateCopyWith<_$_PetsState> get copyWith =>
      throw _privateConstructorUsedError;
}
