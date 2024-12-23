import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CElement extends StatelessWidget {
  const CElement({
    super.key,
    required this.height,
    required this.width,
    required this.svgPath,
    required this.svgColor,
  });

  final double height;
  final double width;
  final String svgPath;
  final Color svgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(1000),
      ),
      child: SvgPicture.asset(
        svgPath,
        colorFilter: ColorFilter.mode(svgColor, BlendMode.srcIn),
      ),
    );
  }
}
