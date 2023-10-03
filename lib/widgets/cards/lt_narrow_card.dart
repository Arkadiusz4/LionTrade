import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lion_trade/style/color/colors.dart';

class LtNarrowCard extends StatelessWidget {
  final String title;
  final Function? onPressed;
  final String? svgIconAsset;
  final IconData? icon;
  final Color color;
  final Color colorText;
  final Color iconColor;
  final double minWidth;

  const LtNarrowCard({
    required this.title,
    required this.onPressed,
    this.svgIconAsset,
    this.icon,
    this.color = LtColor.white,
    this.colorText = LtColor.black,
    this.iconColor = LtColor.black,
    this.minWidth = 150.0,
    Key? key,
  }) : super(key: key);

  factory LtNarrowCard.withSvgIcon({
    required String title,
    required Function? onPressed,
    required String svgIconAsset,
    Color color = LtColor.navy,
    Color colorText = LtColor.white,
    double minWidth = 150.0,
  }) {
    return LtNarrowCard(
      title: title,
      onPressed: onPressed,
      svgIconAsset: svgIconAsset,
      color: color,
      colorText: colorText,
      minWidth: minWidth,
    );
  }

  factory LtNarrowCard.withIcon({
    required String title,
    required String description,
    required Function? onPressed,
    required IconData icon,
    Color color = LtColor.navy,
    Color colorText = LtColor.white,
    double minWidth = 150.0,
  }) {
    return LtNarrowCard(
      title: title,
      onPressed: onPressed,
      icon: icon,
      color: color,
      colorText: colorText,
      minWidth: minWidth,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (icon != null) Icon(icon, size: 25.0, color: iconColor),
                if (svgIconAsset != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: SvgPicture.asset(
                      svgIconAsset!,
                      width: 30.0,
                      height: 30.0,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: Icon(Icons.arrow_forward_ios, size: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
