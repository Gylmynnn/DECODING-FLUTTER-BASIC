import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/utils/utils.dart';

class WebDetailPokemonPage extends StatefulWidget {
  const WebDetailPokemonPage(
      {super.key, required this.pokemon, this.lengthData});

  final PokemonModel pokemon;
  final int? lengthData;

  @override
  State<WebDetailPokemonPage> createState() => _WebDetailPokemonPageState();
}

class _WebDetailPokemonPageState extends State<WebDetailPokemonPage> {
  @override
  Widget build(BuildContext context) {
    final int pokemonNumber = widget.lengthData! + 1;
    return Scaffold(
      backgroundColor: Utils.customCardColor(widget.pokemon),
      appBar: AppBar(
        actions: <Widget>[
          // Row(
          //   children: List.generate(widget.pokemon.jenis.length, (index) {
          //     return Text(widget.pokemon.jenis[index]);
          //   }),
          // ),
          // const SizedBox(
          //   width: 20,
          // ),
          Text(
            "Tinggi : ${widget.pokemon.tinggi} M",
            style: Utils.textStyle(Colors.white, FontWeight.w700, 24),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            "Berat : ${widget.pokemon.berat} Kg",
            style: Utils.textStyle(Colors.white, FontWeight.w700, 24),
          ),
          const SizedBox(
            width: 30,
          )
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Text(
                    "#00$pokemonNumber",
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Text(
                    widget.pokemon.nama,
                    style: const TextStyle(
                        fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    // Utils.verticalText("ポケモン", 12),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 10,
                          width: 64,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        Container(
                          height: 10,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        Container(
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width / 5),
                          child: Text(widget.pokemon.tentang,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Stack(
            children: [
              Positioned(
                  top: 50,
                  right: 50,
                  child: Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(1000)),
                  )),
              Image.network(
                widget.pokemon.gambar,
                height: 550,
                width: 550,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Container(
            height: double.infinity,
            width: 8,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            margin: const EdgeInsets.only(bottom: 120, top: 200),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Utils.iconElement(widget.pokemon),
                const SizedBox(height: 42),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  child: Wrap(
                    children: List.generate(widget.pokemon.status.length,
                        (int index) {
                      final PokemonStatus status = widget.pokemon.status[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 6, bottom: 6),
                        child: Chip(
                            label: Text("${status.jenis} : ${status.nilai}")),
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
