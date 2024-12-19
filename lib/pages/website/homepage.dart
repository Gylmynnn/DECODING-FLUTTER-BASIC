import 'package:flutter/material.dart';
import 'package:pokedex/components/button.dart';
import 'package:pokedex/components/card.dart';
import 'package:pokedex/components/form.dart';
import 'package:pokedex/model/pokemon_data.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/pages/website/detail.dart';
import 'package:pokedex/utils/assets.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:skeletonizer/skeletonizer.dart';

class WebsiteHomePage extends StatefulWidget {
  const WebsiteHomePage({super.key});

  @override
  State<WebsiteHomePage> createState() => _WebsiteHomePageState();
}

final TextEditingController searchC = TextEditingController();
List<PokemonModel> pokemons = <PokemonModel>[];
String selectedJenis = "All";
String svgPath = SvgsPath.fillterImg;
final List<String> jenisOptions = [
  "All",
  "Grass",
  "Poison",
  "Fire",
  "Water",
  "Electric",
  "Dragon",
  "Bug",
  "Dark",
  "Fairy",
  "Fighting",
  "Flying",
  "Ice",
  "Ghost",
  "Normal",
  "Psychic",
  "Rock",
  "Steel",
  "Ground",
];

class _WebsiteHomePageState extends State<WebsiteHomePage> {
  @override
  void initState() {
    pokemons = dataPokemon;
    super.initState();
  }

  void _fillterPokemon() {
    setState(() {
      if (selectedJenis != "All") {
        pokemons = dataPokemon.where((pokemon) {
          return pokemon.jenis.contains(selectedJenis);
        }).toList();
      } else {
        pokemons = dataPokemon;
      }
    });
  }

  void _searchPokemon(String query) {
    setState(() {
      final filteredPokemon = selectedJenis == "All"
          ? dataPokemon
          : dataPokemon.where((pokemon) {
              return pokemon.jenis.contains(selectedJenis);
            }).toList();
      pokemons = filteredPokemon.where((PokemonModel pokemon) {
        return pokemon.nama.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 140),
            child: Column(children: [
              Image.asset(
                SvgsPath.logoImg,
                width: size / 3,
              ),
              Text(
                "Search Your Favorite Pokemons",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Row(children: [
                Expanded(
                  child: CForm(
                    controller: searchC,
                    label: "Search Pokemons...",
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                    onChange: (value) {
                      _searchPokemon(value);
                    },
                    suffixIcon: IconButton(
                      onPressed: () {
                        if (searchC.text.isNotEmpty) {
                          setState(() {
                            pokemons = dataPokemon;
                          });
                          searchC.clear();
                        }
                      },
                      icon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                            searchC.text.isEmpty ? Icons.search : Icons.clear),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                CBtn(
                  width: 20,
                  height: 20,
                  // onTap: _openBottomSheet,
                  svgPath: svgPath,
                  svgSize: 24,
                  svgColor: Colors.white,
                ),
              ]),
              const SizedBox(height: 18),
              Text("Fillter Your Pokemons"),
              const SizedBox(height: 12),
              Expanded(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: List.generate(jenisOptions.length, (int index) {
                    final String jenis = jenisOptions[index];
                    return CBtn(
                      width: 16,
                      height: 16,
                      svgSize: 36,
                      svgColor: Colors.white,
                      svgPath: Utils.svgImage(jenis),
                      onTap: () {
                        setState(() {
                          searchC.clear();
                          selectedJenis = jenis;
                          _fillterPokemon();
                          svgPath = Utils.svgImage(jenis);
                        });
                      },
                    );
                  }),
                ),
              ),
            ]),
          )),
          FutureBuilder(
            future: Future.delayed(const Duration(seconds: 2)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Expanded(
                    child: Skeletonizer(
                  enabled: true,
                  child: GridView.builder(
                      padding: const EdgeInsets.all(8),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4, childAspectRatio: 0.8),
                      itemCount: pokemons.length,
                      itemBuilder: (BuildContext context, int index) {
                        final PokemonModel pokemon = pokemons[index];
                        return Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Text(pokemon.nama),
                                Image.network(pokemon.gambar)
                              ],
                            ));
                      }),
                ));
              } else {
                return Expanded(
                    child: Skeletonizer(
                        enabled: false,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 62),
                          child: GridView.builder(
                              padding: const EdgeInsets.only(right: 18),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 0.7, crossAxisCount: 4),
                              itemCount: pokemons.length,
                              itemBuilder: (BuildContext context, int index) {
                                final PokemonModel pokemon = pokemons[index];
                                return CCard(
                                  pokeNumberSize: 24,
                                  pokeTitleSize: 18,
                                  kanjiSize: 32,
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
                        )));
              }
            },
          ),
        ],
      ),
    );
  }
}
