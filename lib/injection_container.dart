import 'package:get_it/get_it.dart';
import 'package:pets/pets/api/pets_api.dart';
import 'package:pets/pets/bloc/cubit/pets_cubit.dart';
import 'package:pets/pets/repository/pets_repository.dart';

final getIt = GetIt.instance;

void configureDependecies() {
  //cubits
  getIt.registerFactory(() => PetsCubit(petsRepository: getIt()));

  //repositories
  getIt.registerFactory(() => PetsRepository(petsApi: getIt()));

  //data sources
  getIt.registerFactory(() => PetsAPI());
}
