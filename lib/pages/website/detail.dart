import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/utils/assets.dart';
import 'package:pokedex/utils/utils.dart';

class WebDetailPokemonPage extends StatefulWidget {
  const WebDetailPokemonPage(
      {super.key, required this.pokemon, this.lengthData});

  final PokemonModel pokemon;
  final int? lengthData;

  @override
  State<WebDetailPokemonPage> createState() => _WebDetailPokemonPageState();
}

List<BoxShadow> boxShadow = <BoxShadow>[
  BoxShadow(color: Colors.grey.shade500, blurRadius: 16, spreadRadius: 1)
];

class _WebDetailPokemonPageState extends State<WebDetailPokemonPage> {
  @override
  Widget build(BuildContext context) {
    final int pokemonNumber = widget.lengthData! + 1;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [...boxShadow],
                  shape: BoxShape.circle),
              child: Icon(Icons.arrow_back))),
      backgroundColor: Utils.customCardColor(widget.pokemon),
      appBar: AppBar(
        leading: const SizedBox(),
        actions: <Widget>[],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20, left: 30),
                child: Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    Utils.iconElement(widget.pokemon, height: 80, width: 80),
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width / 5),
                      child: Text(
                        widget.pokemon.tentang,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    width: 500,
                    height: 500,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withAlpha(30),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset:
                                const Offset(0, 3) // changes position of shadow
                            ),
                      ],
                      color: Colors.white,
                    ),
                  ),
                  Image.network(
                    widget.pokemon.gambar,
                    height: 500,
                    width: 500,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Column(
                spacing: 12,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 22),
                  Image.asset(
                    SvgsPath.logoImg,
                    height: 100,
                  ),
                  Utils.verticalText(direction: Axis.horizontal, "ポケモン#", 32),
                  Row(
                  spacing: 8,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Text("Tinggi : ${widget.pokemon.tinggi}")),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Text("Berat : ${widget.pokemon.berat}")),
                  ]),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    child: Wrap(
                      runSpacing: 14,
                      spacing: 14,
                      children: List.generate(widget.pokemon.status.length,
                          (int index) {
                        final PokemonStatus status =
                            widget.pokemon.status[index];
                        return Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Text("${status.jenis} : ${status.nilai}"));
                      }),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    child: Wrap(
                      runSpacing: 14,
                      spacing: 14,
                      children: List.generate(widget.pokemon.kemampuan.length,
                          (int index) {
                        final String kemampuan =
                            widget.pokemon.kemampuan[index];
                        return Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Text(kemampuan));
                      }),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
