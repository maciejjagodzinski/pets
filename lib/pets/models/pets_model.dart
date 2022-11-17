import 'package:freezed_annotation/freezed_annotation.dart';

part 'pets_model.freezed.dart';
part 'pets_model.g.dart';

@freezed
class PetModel with _$PetModel {
  factory PetModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(defaultValue: 'Breed unknown') required String breed,
  }) = _PetModel;

  factory PetModel.fromJson(Map<String, dynamic> json) =>
      _$PetModelFromJson(json);
}
