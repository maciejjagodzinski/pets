import 'package:flutter/material.dart';
import 'package:pets/pets/models/pet_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    required this.petModel,
    Key? key,
  }) : super(key: key);

  final PetModel petModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(petModel.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'Breed:',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(petModel.breed),
          ],
        ),
      ),
    );
  }
}
