part of 'pets_cubit.dart';

@immutable
class PetsState {
  final List<PetModel>? petsModels;
  final String errorMessage;
  final bool isLoading;

  const PetsState({
    required this.petsModels,
    required this.errorMessage,
    required this.isLoading,
  });
}
