import 'dart:convert';

import 'package:pets/pets/api/pets_api.dart';
import 'package:pets/pets/models/pet_model.dart';

class PetsRepository {
  PetsRepository(this.petsApi);

  final PetsAPI petsApi;

  Future<List<PetModel>> getPetModels() async {
    final response = await petsApi.getRawPets();
    final List<dynamic> json = jsonDecode(response);

    return json.map((item) => PetModel.fromJson(item)).toList();
  }
}
