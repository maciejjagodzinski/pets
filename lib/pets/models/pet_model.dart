import 'package:json_annotation/json_annotation.dart';

part 'pet_model.g.dart';

@JsonSerializable()
class PetModel {
  @JsonKey(name: 'name')
  final String name;

  @JsonKey(defaultValue: 'Breed unknown')
  final String breed;

  PetModel({
    required this.name,
    required this.breed,
  });

  factory PetModel.fromJson(Map<String, dynamic> json) =>
      _$PetModelFromJson(json);

  Map<String, dynamic> toJson() => _$PetModelToJson(this);
}
