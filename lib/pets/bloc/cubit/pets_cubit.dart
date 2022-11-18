import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets/pets/models/pets_model.dart';
import 'package:pets/pets/repository/pets_repository.dart';

part 'pets_state.dart';
part 'pets_cubit.freezed.dart';

class PetsCubit extends Cubit<PetsState> {
  PetsCubit({required this.petsRepository})
      : super(const PetsState(
          petsModels: [],
          searchResult: [],
          errorMessage: null,
          isLoading: false,
        ));

  final PetsRepository petsRepository;

  Future<void> showPetModels() async {
    emit(const PetsState(
      petsModels: [],
      searchResult: [],
      errorMessage: null,
      isLoading: true,
    ));
    try {
      final petModels = await petsRepository.getPetModels();
      emit(PetsState(
        petsModels: petModels,
        searchResult: petModels,
        errorMessage: null,
        isLoading: false,
      ));
    } catch (error) {
      emit(PetsState(
        petsModels: [],
        searchResult: [],
        errorMessage: error.toString(),
        isLoading: false,
      ));
    }
  }

  Future<void> showFilterPetModels({required String searchInput}) async {
    emit(PetsState(
      petsModels: state.petsModels,
      searchResult: state.searchResult,
      errorMessage: null,
      isLoading: false,
    ));
    final searchResult = state.petsModels
        .where((petModel) =>
            petModel.name.toLowerCase().contains(searchInput.toLowerCase()))
        .toList();
    emit(PetsState(
      petsModels: state.petsModels,
      searchResult: searchResult,
      errorMessage: null,
      isLoading: false,
    ));
  }
}
