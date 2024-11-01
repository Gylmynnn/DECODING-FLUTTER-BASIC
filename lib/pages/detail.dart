import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon_model.dart';

class DetailPokemonPage extends StatefulWidget {
  const DetailPokemonPage({super.key, required this.pokemon});

  final PokemonModel pokemon;

  @override
  State<DetailPokemonPage> createState() => _DetailPokemonPageState();
}

class _DetailPokemonPageState extends State<DetailPokemonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pokemon.nama),
      ),
      body: ListView(
        children: [
          Text(widget.pokemon.nama),
          Image.network(widget.pokemon.gambar),
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
