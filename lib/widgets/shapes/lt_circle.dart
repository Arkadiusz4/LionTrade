import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lion_trade/style/color/lt_gradient.dart';

class LtCircle extends StatelessWidget {
  final String svgAsset;

  const LtCircle({required this.svgAsset, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.0,
      height: 55.0,
      decoration: const BoxDecoration(
        gradient: LtGradient.orangeToBlack,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: SvgPicture.asset(svgAsset),
      ),
    );
  }
}
