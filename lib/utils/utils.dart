import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/utils/assets.dart';
import 'package:pokedex/utils/theme.dart';

class Utils {
  static Color customCardColor(PokemonModel pokemon) {
    final List<String> item = pokemon.jenis;
    if (item.contains("Grass")) {
      return Themes.greenC;
    } else if (item.contains("Fire")) {
      return Themes.redC;
    } else if (item.contains("Electric")) {
      return Colors.yellow;
    } else if (item.contains("Water")) {
      return Themes.blueC;
    } else {
      return Colors.cyan;
    }
  }

  static Widget iconElement(PokemonModel pokemon) {
    final List<String> item = pokemon.jenis;
    final List<Widget> iconList = [];

    for (final type in item) {
      switch (type) {
        case "Grass":
          iconList.add(
            Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(right: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(1000)),
                child: SvgPicture.asset(
                  SvgsPath.grassSvg,
                  color: Colors.green,
                )),
          );
          break;
        case "Fire":
          iconList.add(
            Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(right: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(1000)),
                child: SvgPicture.asset(SvgsPath.fireSvg, color: Themes.redC)),
          );
          break;
        case "Electric":
          iconList.add(
            Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(right: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(1000)),
                child: SvgPicture.asset(
                  SvgsPath.electricSvg,
                  color: Colors.yellow,
                )),
          );
          break;
        case "Water":
          iconList.add(
            Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(right: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(1000)),
                child: SvgPicture.asset(
                  SvgsPath.waterSvg,
                  color: Themes.blueC,
                )),
          );
          break;
        case "Poison":
          iconList.add(
            Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(right: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(1000)),
                child: SvgPicture.asset(
                  SvgsPath.poisonSvg,
                  color: Colors.purple,
                )),
          );
          break;

        default:
          break; // Handle other types or default case as needed
      }
    }

    return Wrap(
      children: iconList,
    );
  }
   

  static TextStyle textStyle(Color color, FontWeight fw, double fs){
    return TextStyle(color: color, fontWeight: fw, fontSize: fs);
  }

  static Widget verticalText(String text) {
    return Wrap(
      runSpacing: 30,
      direction: Axis.vertical,
      alignment: WrapAlignment.center,
      children: text
          .split("")
          .map((string) => Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Text(string,
                    style: const TextStyle(
                        fontSize: 60, fontWeight: FontWeight.bold)),
              ))
          .toList(),
    );
  }
}