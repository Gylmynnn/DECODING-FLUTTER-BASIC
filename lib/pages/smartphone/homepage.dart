import 'package:flutter/material.dart';
import 'package:pokedex/components/button.dart';
import 'package:pokedex/components/card.dart';
import 'package:pokedex/components/form.dart';
import 'package:pokedex/model/pokemon_data.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/pages/smartphone/detail.dart';
import 'package:pokedex/utils/assets.dart';
import 'package:pokedex/utils/theme.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SmartphoneHomePage extends StatefulWidget {
  const SmartphoneHomePage({super.key});

  @override
  State<SmartphoneHomePage> createState() => _SmartphoneHomePageState();
}

final TextEditingController searchC = TextEditingController();
List<PokemonModel> pokemons = <PokemonModel>[];
String? selectedJenis;
String svgPath = SvgsPath.fillterImg;
final List<String> jenisOptions = [
  "Grass",
  "Poison",
  "Fire",
  "Water",
];

class _SmartphoneHomePageState extends State<SmartphoneHomePage> {
  @override
  void initState() {
    pokemons = dataPokemon;
    super.initState();
  }

  void _fillterPokemon() {
    setState(() {
      pokemons = dataPokemon.where((pokemon) {
        return pokemon.jenis.contains(selectedJenis!);
      }).toList();
    });
  }

  void _searchPokemon(String query) {
    setState(() {
      searchC.text = query;
      pokemons = dataPokemon.where((PokemonModel pokemon) {
        return pokemon.nama.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  void _openBottomSheet() {
    showModalBottomSheet(
        showDragHandle: true,
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
              height: 1000,
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Wrap(
                    spacing: 20,
                    children: [
                      CBtn(
                        width: 14,
                        height: 14,
                        svgPath: SvgsPath.fireSvg,
                        svgColor: Themes.redC,
                        svgSize: 50,
                        onTap: () {
                          setState(() {
                            selectedJenis = jenisOptions[2];
                            _fillterPokemon();
                            svgPath = SvgsPath.fireSvg;
                          });
                          Navigator.pop(context);
                        },
                      ),
                      CBtn(
                        svgPath: SvgsPath.grassSvg,
                        svgColor: Themes.greenC,
                        width: 14,
                        height: 14,
                        svgSize: 50,
                        onTap: () {
                          setState(() {
                            selectedJenis = jenisOptions[0];
                            _fillterPokemon();
                            svgPath = SvgsPath.grassSvg;
                          });

                          Navigator.pop(context);
                        },
                      ),
                    ],
                  )));
        });
  }

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  SvgsPath.logoImg,
                  width: size / 3,
                ),
                Text("Search Your Favorite Pokemons"),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Expanded(
                  child: CForm(
                      label: "Search Pokemon..",
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 24),
                      controller: searchC,
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
                          icon: Icon(searchC.text.isEmpty
                              ? Icons.search
                              : Icons.clear))),
                ),
                const SizedBox(width: 12),
                CBtn(
                  width: 16,
                  height: 16,
                  onTap: _openBottomSheet,
                  svgPath: svgPath,
                  svgSize: 24,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FutureBuilder(
            future: Future.delayed(const Duration(seconds: 1)),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Skeletonizer(
                  enabled: true,
                  child: Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.7, crossAxisCount: 2),
                      itemCount: pokemons.length,
                      itemBuilder: (BuildContext context, int index) {
                        final PokemonModel pokemon = pokemons[index];
                        return Column(
                          children: [
                            Text(pokemon.nama),
                            Image.network(pokemon.gambar)
                          ],
                        );
                      },
                    ),
                  ),
                );
              } else {
                return Skeletonizer(
                  enabled: false,
                  child: Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 0.7),
                      itemCount: pokemons.length,
                      itemBuilder: (BuildContext context, int index) {
                        final PokemonModel pokemon = pokemons[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return SmartphoneDetailPokemonPage(
                                      pokemon: pokemon);
                                },
                              ),
                            );
                          },
                          child: CCard(
                            margin: const EdgeInsets.all(6),
                            cardColor: Utils.customCardColor(pokemon),
                            item: pokemon,
                            lengthData: index,
                          ),
                        );
                      },
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
