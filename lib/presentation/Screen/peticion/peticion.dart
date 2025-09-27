import 'package:flutter/material.dart';
import 'package:parcial_uno_dispo/helpers/Naruto_peticion.dart';
import 'package:parcial_uno_dispo/model/Naruto_character.dart';

class PeticionScreen extends StatelessWidget {
  const PeticionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final peticion = NarutoPeticion();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Peticion"),
      ),
      body: Padding(padding: 
        EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: peticion.getCharacters(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListCharacter(characters: snapshot.requireData);
          }),
      ),
    );
  }
}

class ListCharacter extends StatelessWidget {
  final List<NarutoCharacter> characters;
  const ListCharacter({super.key, required this.characters});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        final size = MediaQuery.of(context).size;
        NarutoCharacter pj = characters[index];
        return ListTile(
          onTap: () {
            print("Di Tap");
          },
          title: Row(
            children: [
              Image.network(pj.images[0],
                width: size.width * 0.3,
                height: size.height * 0.2,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(pj.name),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: pj.jutsu.take(5).map((re) {
                        return Chip(
                          label: Text(re),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}