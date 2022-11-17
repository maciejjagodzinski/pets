part of 'pets_cubit.dart';

@freezed
class PetsState with _$PetsState {
  const factory PetsState({
    required List<PetModel>? petsModels,
    required List<PetModel>? searchResult,
    required String errorMessage,
    required bool isLoading,
  }) = _PetsState;
}
