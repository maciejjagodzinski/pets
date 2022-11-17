import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:pets/pets/models/pet_model.dart';
import 'package:pets/pets/repository/pets_repository.dart';

part 'pets_state.dart';

class PetsCubit extends Cubit<PetsState> {
  PetsCubit(this._petsRepository)
      : super(const PetsState(
          petsModels: null,
          errorMessage: '',
          isLoading: false,
        ));

  final PetsRepository _petsRepository;

  Future<void> showPetModels() async {
    emit(const PetsState(
      petsModels: null,
      errorMessage: '',
      isLoading: true,
    ));
    try {
      final petModels = await _petsRepository.getPetModels();
      emit(PetsState(
        petsModels: petModels,
        errorMessage: '',
        isLoading: false,
      ));
    } catch (error) {
      emit(PetsState(
        petsModels: null,
        errorMessage: error.toString(),
        isLoading: false,
      ));
    }
  }
}
