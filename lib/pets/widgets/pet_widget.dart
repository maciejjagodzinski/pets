import 'package:flutter/material.dart';
import 'package:pets/pets/models/pets_model.dart';
import 'package:pets/pets/view/pet_details.dart';

class PetWidget extends StatelessWidget {
  const PetWidget({
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
