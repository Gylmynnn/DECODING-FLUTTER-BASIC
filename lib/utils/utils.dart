import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/components/element.dart';

import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/pages/website/homepage.dart';
import 'package:pokedex/utils/assets.dart';
import 'package:pokedex/utils/theme.dart';

class Utils {
  static Color customCardColor(PokemonModel pokemon) {
    final String item = pokemon.jenis[0];
    if (item == "Grass") {
      return Themes.greenC;
    } else if (item == "Fire") {
      return Themes.redC;
    } else if (item == "Electric") {
      return Themes.yellowC;
    } else if (item == "Water") {
      return Themes.blueC;
    } else if (item == "Poison") {
      return Themes.purpleC;
    } else {
      return Colors.cyan;
    }
  }

  static String svgImage(String jenis) {
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

  static Widget iconElement(PokemonModel pokemon,
      {double? height, double? width}) {
    final List<String> item = pokemon.jenis;
    final List<Widget> iconList = <Widget>[];

    for (final String jenis in item) {
      switch (jenis) {
        case "Grass":
          iconList.add(
            CElement(
                height: height ?? 50,
                width: width ?? 50,
                svgPath: SvgsPath.grassSvg,
                svgColor: Themes.greenC),
          );
          break;
        case "Fire":
          iconList.add(
            CElement(
                height: height ?? 50,
                width: width ?? 50,
                svgPath: SvgsPath.fireSvg,
                svgColor: Themes.redC),
          );
          break;
        case "Electric":
          iconList.add(
            CElement(
                height: height ?? 50,
                width: width ?? 50,
                svgPath: SvgsPath.electricSvg,
                svgColor: Themes.yellowC),
          );
          break;
        case "Water":
          iconList.add(
            CElement(
                height: height ?? 50,
                width: width ?? 50,
                svgPath: SvgsPath.waterSvg,
                svgColor: Themes.blueC),
          );
          break;
        case "Poison":
          iconList.add(
            CElement(
                height: height ?? 50,
                width: width ?? 50,
                svgPath: SvgsPath.poisonSvg,
                svgColor: Themes.purpleC),
          );
          break;
        default:
          break; // Handle other types or default case as needed
      }
    }

    return Wrap(
      children: [...iconList],
    );
  }

  static TextStyle textStyle(Color color, FontWeight fw, double fs) {
    return TextStyle(color: color, fontWeight: fw, fontSize: fs);
  }

  static Widget verticalText(String text, double fontSize, {Axis? direction}) {
    return Wrap(
      runSpacing: 30,
      direction: direction ?? Axis.vertical,
      alignment: WrapAlignment.center,
      children: text.split("").map((String text) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
          ),
        );
      }).toList(),
    );
  }
}
