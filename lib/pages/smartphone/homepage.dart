import 'package:flutter/material.dart';
import 'package:pokedex/components/button.dart';
import 'package:pokedex/components/card.dart';
import 'package:pokedex/components/form.dart';
import 'package:pokedex/model/pokemon_data.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/pages/smartphone/detail.dart';
import 'package:pokedex/utils/assets.dart';
import 'package:pokedex/utils/utils.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SmartphoneHomePage extends StatefulWidget {
  const SmartphoneHomePage({super.key});

  @override
  State<SmartphoneHomePage> createState() => _SmartphoneHomePageState();
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

String _svgPath(String jenis) {
  switch (jenis) {
    case "All":
      return SvgsPath.fillterImg;
    case "Grass":
      return SvgsPath.grassSvg;
    case "Fire":
      return SvgsPath.fireSvg;
    case "Water":
      return SvgsPath.waterSvg;
    case "Poison":
      return SvgsPath.poisonSvg;
    case "Dragon":
      return SvgsPath.dragonSvg;
    case "Rock":
      return SvgsPath.rockSvg;
    case "Bug":
      return SvgsPath.bugSvg;
    case "Flying":
      return SvgsPath.flyingSvg;
    case "Psychic":
      return SvgsPath.psychicSvg;
    case "Ground":
      return SvgsPath.groundSvg;
    case "Normal":
      return SvgsPath.normalSvg;
    case "Ghost":
      return SvgsPath.ghostSvg;
    case "Ice":
      return SvgsPath.iceSvg;
    case "Fighting":
      return SvgsPath.fightingSvg;
    case "Fairy":
      return SvgsPath.fairySvg;
    case "Dark":
      return SvgsPath.darkSvg;
    case "Steel":
      return SvgsPath.steelSvg;
    case "Electric":
      return SvgsPath.electricSvg;
    default:
      return "";
  }
}

class _SmartphoneHomePageState extends State<SmartphoneHomePage> {
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
            child: Column(
              children: [
                Image.asset(
                  SvgsPath.logoImg,
                  width: 120,
                ),
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
                        width: 12,
                        height: 12,
                        svgSize: 30,
                        svgColor: Colors.white,
                        svgPath: _svgPath(jenis),
                        onTap: () {
                          setState(() {
                            searchC.clear();
                            selectedJenis = jenis;
                            _fillterPokemon();
                            svgPath = _svgPath(jenis);
                          });
                          Navigator.pop(context);
                        },
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
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
                  svgColor: Colors.white,
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
                return Expanded(
                    child: Skeletonizer(
                  enabled: true,
                  child: GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.7, crossAxisCount: 2),
                    itemCount: pokemons.length,
                    itemBuilder: (BuildContext context, int index) {
                      final PokemonModel pokemon = pokemons[index];
                      return Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(pokemon.nama),
                              Image.network(pokemon.gambar)
                            ],
                          ));
                    },
                  ),
                ));
              } else {
                return Expanded(
                    child: Skeletonizer(
                  enabled: false,
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
                                      pokemonNumber: index, pokemon: pokemon);
                                },
                              ),
                            );
                          },
                          child: pokemons.isNotEmpty
                              ? CCard(
                                  pokeTitleSize: 12,
                                  kanjiSize: 34,
                                  pokeNumberSize: 20,
                                  margin: const EdgeInsets.all(6),
                                  cardColor: Utils.customCardColor(pokemon),
                                  item: pokemon,
                                  lengthData: index,
                                )
                              : Center(
                                  child: Text("Pokemon Not Found"),
                                ));
                    },
                  ),
                ));
              }
            },
          ),
        ],
      ),
    );
  }
}
