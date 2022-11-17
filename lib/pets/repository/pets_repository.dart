import 'package:pets/pets/api/pets_api.dart';
import 'package:pets/pets/models/pet_model.dart';

class PetsRepository {
  PetsRepository(this.petsApi);

  final PetsAPI petsApi;

  Future<List<PetModel>> getPetModels() async {
    final List<PetModel> listaPet = [
      PetModel(name: 'pikus', breed: 'mieszany'),
      PetModel(name: 'kmiec', breed: 'kmieciowy'),
      PetModel(name: 'shrek', breed: 'owczarek'),
    ];
    return listaPet;
  }
}
