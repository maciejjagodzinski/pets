// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PetModel _$$_PetModelFromJson(Map<String, dynamic> json) => _$_PetModel(
      name: json['name'] as String,
      breed: json['breed'] as String? ?? 'Breed unknown',
    );

Map<String, dynamic> _$$_PetModelToJson(_$_PetModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'breed': instance.breed,
    };
