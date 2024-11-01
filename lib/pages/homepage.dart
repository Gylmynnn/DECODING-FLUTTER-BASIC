import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon_data.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/pages/detail.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Pokedex")),
        body: FutureBuilder(
            future: Future.delayed(const Duration(seconds: 2)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Skeletonizer(
                  enabled: true,
                  child: ListView.builder(
                      itemCount: dataPokemon.length,
                      itemBuilder: (BuildContext context, int index) {
                        final PokemonModel pokemon = dataPokemon[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DetailPokemonPage(pokemon: pokemon)));
                          },
                          child: Column(
                            children: [
                              Text(pokemon.nama),
                              Image.network(pokemon.gambar)
                            ],
                          ),
                        );
                      }),
                );
              } else {
                return Skeletonizer(
                  enabled: false,
                  child: ListView.builder(
                      itemCount: dataPokemon.length,
                      itemBuilder: (BuildContext context, int index) {
                        final PokemonModel pokemon = dataPokemon[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        DetailPokemonPage(pokemon: pokemon)));
                          },
                          child: Column(
                            children: [
                              Text(pokemon.nama),
                              Image.network(pokemon.gambar)
                            ],
                          ),
                        );
                      }),
                );
              }
            }));
  }
}
