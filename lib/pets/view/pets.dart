import 'package:flutter/material.dart';
import 'package:pets/injection_container.dart';
import 'package:pets/pets/bloc/cubit/pets_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets/pets/widgets/pet_widget.dart';

class PetsPage extends StatelessWidget {
  const PetsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PetsCubit>(
      create: (context) => getIt()..showPetModels(),
      child: BlocBuilder<PetsCubit, PetsState>(
        builder: (context, state) {
          final searchResult = state.searchResult;

          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.errorMessage != null) {
            return Center(
              child: Text('Error: ${state.errorMessage}'),
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
                      itemCount: searchResult.length,
                      itemBuilder: (context, index) {
                        return PetWidget(petModel: searchResult[index]);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (searchInput) async {
                      await context
                          .read<PetsCubit>()
                          .showFilterPetModels(searchInput: searchInput);
                    },
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
