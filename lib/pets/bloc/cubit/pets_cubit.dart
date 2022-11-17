import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'pets_state.dart';

class PetsCubit extends Cubit<PetsState> {
  PetsCubit() : super(PetsInitial());
}
