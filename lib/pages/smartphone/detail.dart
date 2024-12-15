import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/utils/assets.dart';
import 'package:pokedex/utils/theme.dart';
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
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back)),
      backgroundColor: Utils.customCardColor(widget.pokemon),
      appBar: AppBar(
        leading: SizedBox(),
      ),
      body: ListView(
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
                  ], color: Themes.whiteC, shape: BoxShape.circle),
                ),
              ),
              Image.network(widget.pokemon.gambar),
            ],
          ),
          Text(
            "${widget.pokemon.nama} | #00${widget.pokemonNumber}",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26),
          ),
          Divider(
            thickness: 6,
            indent: 62,
            endIndent: 62,
            color: Colors.white,
          ),
          Wrap(
            children: List.generate(widget.pokemon.status.length, (int index) {
              final PokemonStatus status = widget.pokemon.status[index];
              return Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('jenis : ${status.jenis}'),
                      Text('nilai : ${status.nilai.toString()}')
                    ],
                  )
                ],
              );
            }),
          ),
          Wrap(
            children: List.generate(widget.pokemon.kemampuan.length, (index) {
              return Chip(label: Text(widget.pokemon.kemampuan[index]));
            }),
          ),
          Text(widget.pokemon.tentang)
        ],
      ),
    );
  }
}
