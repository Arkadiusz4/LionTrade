import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lion_trade/theme/colors.dart';

class LtElevatedButton extends StatelessWidget {
  final String text;
  final Function? onPressed;
  final String? svgIconAsset;
  final IconData? icon;
  final Color color;
  final Color colorText;
  final double minWidth;

  const LtElevatedButton({
    required this.text,
    required this.onPressed,
    this.svgIconAsset,
    this.icon,
    this.color = LtColor.navy,
    this.colorText = LtColor.white,
    this.minWidth = 150.0,
    Key? key,
  }) : super(key: key);

  factory LtElevatedButton.withSvgIcon({
    required String text,
    required Function? onPressed,
    required String svgIconAsset,
    Color color = LtColor.navy,
    Color colorText = LtColor.white,
    double minWidth = 150.0,
  }) {
    return LtElevatedButton(
      text: text,
      onPressed: onPressed,
      svgIconAsset: svgIconAsset,
      color: color,
      colorText: colorText,
      minWidth: minWidth,
    );
  }

  factory LtElevatedButton.withIcon({
    required String text,
    required Function? onPressed,
    required IconData icon,
    Color color = LtColor.navy,
    Color colorText = LtColor.white,
    double minWidth = 150.0,
  }) {
    return LtElevatedButton(
      text: text,
      onPressed: onPressed,
      icon: icon,
      color: color,
      colorText: colorText,
      minWidth: minWidth,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
      ),
      child: ElevatedButton(
        onPressed: () {
          if (onPressed != null) {
            onPressed!();
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          minimumSize: MaterialStateProperty.all(
            Size(minWidth, 50.0),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) Icon(icon),
            if (svgIconAsset != null)
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: SvgPicture.asset(
                  svgIconAsset!,
                  width: 30.0,
                  height: 30.0,
                ),
              ),
            Text(
              text,
              style: TextStyle(
                fontSize: 22.0,
                color: colorText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
