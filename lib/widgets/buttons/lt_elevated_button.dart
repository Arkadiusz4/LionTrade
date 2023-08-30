import 'package:flutter/material.dart' hide Colors;
import 'package:lion_trade/theme/colors.dart';

class LtElevatedButton extends StatelessWidget {
  final String text;
  final Function? onPressed;
  final Color color;
  final Color colorText;
  final double minWidth;

  const LtElevatedButton({
    required this.text,
    required this.onPressed,
    this.color = LtColor.navy,
    this.colorText = LtColor.white,
    this.minWidth = 150.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
      ),
      child: ElevatedButton(
        onPressed: () {
          if (onPressed != null) {
            onPressed;
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          minimumSize: MaterialStateProperty.all(
            Size(minWidth, 50),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 22.0,
            color: colorText,
          ),
        ),
      ),
    );
  }
}
