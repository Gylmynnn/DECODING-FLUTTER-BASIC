import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/utils/theme.dart';

class CBtn extends StatelessWidget {
  const CBtn({
    super.key,
    this.onTap,
    this.height,
    this.width,
    this.margin,
    this.svgSize,
    this.svgColor,
    required this.svgPath,
  });

  final String svgPath;
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final double? svgSize;
  final EdgeInsetsGeometry? margin;
  final Color? svgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        padding:
            EdgeInsets.symmetric(horizontal: width ?? 0, vertical: height ?? 0),
        // width: double.infinity,

        decoration: BoxDecoration(
            color: Themes.blackC.withAlpha(120),
            // border: Border.all(color: Themes.blackC),
            borderRadius: BorderRadius.circular(12)),

        child: SvgPicture.asset(
          svgPath,
          width: svgSize,
          color: svgColor,
        ),
      ),
    );
  }
}

