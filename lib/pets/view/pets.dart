import 'package:flutter/material.dart';
import 'package:pets/pets/api/pets_api.dart';
import 'package:pets/pets/bloc/cubit/pets_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets/pets/models/pet_model.dart';
import 'package:pets/pets/repository/pets_repository.dart';
import 'package:pets/pets/view/pet_details.dart';

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

          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.errorMessage.isNotEmpty) {
            return Center(
              child: Text('Error: ${state.errorMessage}'),
            );
          }

          // if (petModels == null) {
          //   return const Center(
          //     child: Text('No pets found'),
          //   );
          // }

          return Scaffold(
            appBar: AppBar(
              title: const Text('Pets'),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: petModels!.length,
                      itemBuilder: (context, index) {
                        return PetModelWidget(petModel: petModels[index]);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: widget.searchController,
                    onChanged: (searchInput) async {
                      await context
                          .read<PetsCubit>()
                          .filterPetModels(searchInput: searchInput);
                    },
                    // onChanged: () async {
                    //   await context.read<PetsCubit>().filterPetModels(
                    //       searchInput: widget.searchController.text);
                    // },
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
        child: Container(
            color: Colors.grey[200],
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => DetailsPage(petModel: petModel)),
                  ),
                );
              },
              leading: const Icon(
                Icons.pets,
              ),
              title: Text(petModel.name),
              subtitle: Text(petModel.breed),
              trailing: const Icon(
                Icons.arrow_circle_right_outlined,
              ),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            )),
      ),
    ));
  }
}
