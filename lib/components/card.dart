import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/utils/utils.dart';

class CCard extends StatelessWidget {
  const CCard({
    super.key,
    this.cardColor,
    this.borderR,
    this.height,
    this.width,
    this.margin,
    this.padding,
    this.onClick,
    this.lengthData,
    required this.item,
  });

  final VoidCallback? onClick;
  final PokemonModel item;
  final double? height;
  final double? width;
  final Color? cardColor;
  final double? borderR;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final int? lengthData;

  @override
  Widget build(BuildContext context) {
    final int pokeNumber = lengthData! + 1;

    final double size = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onClick,
      child: Container(
          padding: padding,
          margin: margin,
          width: width,
          height: height,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
              color: cardColor,
              borderRadius: BorderRadius.circular(borderR ?? 12)),
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                  margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      "#00$pokeNumber",
                      style:  TextStyle(
                          fontSize: size / 20, fontWeight: FontWeight.bold),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Utils.verticalText("ポケモン", context),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                  margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      item.nama,
                      style:  TextStyle(
                          fontSize: size / 32 , fontWeight: FontWeight.bold),
                    ),
                  )),
              Center(
                child: Image.network(item.gambar),
              )
            ],
          )),
    );
  }
}
