import 'package:flutter/material.dart';
import 'package:pets/pets/api/pets_api.dart';
import 'package:pets/pets/bloc/cubit/pets_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets/pets/models/pet_model.dart';
import 'package:pets/pets/repository/pets_repository.dart';

class PetsPage extends StatefulWidget {
  PetsPage({
    Key? key,
  }) : super(key: key);

  final searchController = TextEditingController();

  @override
  State<PetsPage> createState() => _PetsPageState();
}

class _PetsPageState extends State<PetsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PetsCubit(PetsRepository(PetsAPI()))..showPetModels(),
      child: BlocBuilder<PetsCubit, PetsState>(
        builder: (context, state) {
          final petModels = state.petsModels;

          if (petModels == null) {
            return const Center(
              child: Text('No pets found'),
            );
          }

          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Scaffold(
            appBar: AppBar(
              title: const Text('Pets'),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: petModels.length,
                      itemBuilder: (context, index) {
                        return PetModelWidget(petModel: petModels[index]);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    // onChanged: (){},
                    controller: widget.searchController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      hintText: 'search',
                      iconColor: Color(0xFF000000),
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class PetModelWidget extends StatelessWidget {
  const PetModelWidget({
    Key? key,
    required this.petModel,
  }) : super(key: key);

  final PetModel petModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Row(
            children: [
              Column(
                children: const [
                  SizedBox(
                      height: 100,
                      child: Icon(
                        Icons.pets,
                        size: 50,
                      )),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    petModel.name,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(petModel.breed),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
