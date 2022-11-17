// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pets_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetModel _$PetModelFromJson(Map<String, dynamic> json) {
  return _PetModel.fromJson(json);
}

/// @nodoc
mixin _$PetModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'Breed unknown')
  String get breed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetModelCopyWith<PetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetModelCopyWith<$Res> {
  factory $PetModelCopyWith(PetModel value, $Res Function(PetModel) then) =
      _$PetModelCopyWithImpl<$Res, PetModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(defaultValue: 'Breed unknown') String breed});
}

/// @nodoc
class _$PetModelCopyWithImpl<$Res, $Val extends PetModel>
    implements $PetModelCopyWith<$Res> {
  _$PetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? breed = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breed: null == breed
          ? _value.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PetModelCopyWith<$Res> implements $PetModelCopyWith<$Res> {
  factory _$$_PetModelCopyWith(
          _$_PetModel value, $Res Function(_$_PetModel) then) =
      __$$_PetModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(defaultValue: 'Breed unknown') String breed});
}

/// @nodoc
class __$$_PetModelCopyWithImpl<$Res>
    extends _$PetModelCopyWithImpl<$Res, _$_PetModel>
    implements _$$_PetModelCopyWith<$Res> {
  __$$_PetModelCopyWithImpl(
      _$_PetModel _value, $Res Function(_$_PetModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? breed = null,
  }) {
    return _then(_$_PetModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breed: null == breed
          ? _value.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PetModel implements _PetModel {
  _$_PetModel(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(defaultValue: 'Breed unknown') required this.breed});

  factory _$_PetModel.fromJson(Map<String, dynamic> json) =>
      _$$_PetModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(defaultValue: 'Breed unknown')
  final String breed;

  @override
  String toString() {
    return 'PetModel(name: $name, breed: $breed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PetModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.breed, breed) || other.breed == breed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, breed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PetModelCopyWith<_$_PetModel> get copyWith =>
      __$$_PetModelCopyWithImpl<_$_PetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PetModelToJson(
      this,
    );
  }
}

abstract class _PetModel implements PetModel {
  factory _PetModel(
      {@JsonKey(name: 'name')
          required final String name,
      @JsonKey(defaultValue: 'Breed unknown')
          required final String breed}) = _$_PetModel;

  factory _PetModel.fromJson(Map<String, dynamic> json) = _$_PetModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(defaultValue: 'Breed unknown')
  String get breed;
  @override
  @JsonKey(ignore: true)
  _$$_PetModelCopyWith<_$_PetModel> get copyWith =>
      throw _privateConstructorUsedError;
}
