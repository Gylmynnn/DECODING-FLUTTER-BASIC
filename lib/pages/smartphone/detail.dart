import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/utils/assets.dart';
import 'package:pokedex/utils/utils.dart';

class SmartphoneDetailPokemonPage extends StatefulWidget {
  const SmartphoneDetailPokemonPage(
      {super.key, required this.pokemon, required this.pokemonNumber});

  final PokemonModel pokemon;
  final int pokemonNumber;

  @override
  State<SmartphoneDetailPokemonPage> createState() =>
      _SmartphoneDetailPokemonPageState();
}

class _SmartphoneDetailPokemonPageState
    extends State<SmartphoneDetailPokemonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade500,
                      blurRadius: 16,
                      spreadRadius: 1)
                ],
                shape: BoxShape.circle),
            child: Icon(Icons.arrow_back),
          )),
      backgroundColor: Utils.customCardColor(widget.pokemon),
      appBar: AppBar(
        leading: SizedBox(),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Image.asset(
            SvgsPath.logoImg,
            height: 62,
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Center(
                child: Container(
                  height: 360,
                  width: 360,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 16, spreadRadius: 1)
                  ], color: Colors.white, shape: BoxShape.circle),
                ),
              ),
              Image.network(widget.pokemon.gambar),
            ],
          ),
          Utils.verticalText("ポケモン", 20, direction: Axis.horizontal),
          Text(
            "${widget.pokemon.nama} | #00${widget.pokemonNumber}",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26),
          ),
          const SizedBox(height: 8),
          Center(
            child: Utils.iconElement(widget.pokemon),
          ),
          const SizedBox(height: 12),
          Row(children: [
            Expanded(
              child: Divider(
                thickness: 6,
                endIndent: 15,
                color: Colors.white,
              ),
            ),
            Text(
              "Tentang",
              style: TextStyle(fontSize: 16),
            ),
            Expanded(
              child: Divider(
                thickness: 6,
                indent: 15,
                // endIndent: 62,
                color: Colors.white,
              ),
            ),
          ]),
          Text(
            widget.pokemon.tentang,
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 8),
          Row(children: [
            Expanded(
              child: Divider(
                thickness: 6,
                endIndent: 15,
                color: Colors.white,
              ),
            ),
            Text(
              "Status",
              style: TextStyle(fontSize: 16),
            ),
            Expanded(
              child: Divider(
                thickness: 6,
                indent: 15,
                // endIndent: 62,
                color: Colors.white,
              ),
            ),
          ]),
          const SizedBox(height: 8),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: List.generate(widget.pokemon.status.length, (int index) {
              final PokemonStatus status = widget.pokemon.status[index];
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  "${status.jenis} : ${status.nilai}",
                  style: TextStyle(fontSize: 12),
                ),
              );
            }),
          ),
          const SizedBox(height: 10),
          Row(children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Text(
                "Tinggi : ${widget.pokemon.tinggi}",
                style: TextStyle(fontSize: 12),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Text(
                "Berat : ${widget.pokemon.berat}",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ]),
          const SizedBox(height: 8),
          Row(children: [
            Expanded(
              child: Divider(
                thickness: 6,
                endIndent: 15,
                color: Colors.white,
              ),
            ),
            Text(
              "Kemampuan",
              style: TextStyle(fontSize: 16),
            ),
            Expanded(
              child: Divider(
                thickness: 6,
                indent: 15,
                // endIndent: 62,
                color: Colors.white,
              ),
            ),
          ]),
          const SizedBox(height: 8),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children:
                List.generate(widget.pokemon.kemampuan.length, (int index) {
              final String kemampuan = widget.pokemon.kemampuan[index];
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  kemampuan,
                  style: TextStyle(fontSize: 12),
                ),
              );
            }),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
