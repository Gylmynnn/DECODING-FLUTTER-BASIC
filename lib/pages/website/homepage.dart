import 'package:flutter/material.dart';
import 'package:pokedex/components/card.dart';
import 'package:pokedex/model/pokemon_data.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/pages/website/detail.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:skeletonizer/skeletonizer.dart';

class WebsiteHomePage extends StatefulWidget {
  const WebsiteHomePage({super.key});

  @override
  State<WebsiteHomePage> createState() => _WebsiteHomePageState();
}

class _WebsiteHomePageState extends State<WebsiteHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pokedex".toUpperCase())),
      body: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 2)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Skeletonizer(
              enabled: true,
              child: GridView.builder(
                  padding: const EdgeInsets.all(8),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, childAspectRatio: 0.8),
                  itemCount: dataPokemon.length,
                  itemBuilder: (BuildContext context, int index) {
                    final PokemonModel pokemon = dataPokemon[index];
                    return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Text(pokemon.nama),
                            Image.network(pokemon.gambar)
                          ],
                        ));
                  }),
            );
          } else {
            return Skeletonizer(
              enabled: false,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.8, crossAxisCount: 4),
                  itemCount: dataPokemon.length,
                  itemBuilder: (BuildContext context, int index) {
                    final PokemonModel pokemon = dataPokemon[index];
                    return CCard(
                    pokeNumberSize: 32,
                    pokeTitleSize: 32,
                    kanjiSize: 60,
                      lengthData: index,
                      margin: const EdgeInsets.all(8),
                      cardColor: Utils.customCardColor(pokemon),
                      item: pokemon,
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    WebDetailPokemonPage(
                                      pokemon: pokemon,
                                      lengthData: index,
                                    )));
                      },
                    );
                  }),
            );
          }
        },
      ),
    );
  }
}
