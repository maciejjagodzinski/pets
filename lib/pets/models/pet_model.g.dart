// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PetModel _$PetModelFromJson(Map<String, dynamic> json) => PetModel(
      name: json['name'] as String,
      breed: json['breed'] as String? ?? 'Breed unknown',
    );

Map<String, dynamic> _$PetModelToJson(PetModel instance) => <String, dynamic>{
      'name': instance.name,
      'breed': instance.breed,
    };
