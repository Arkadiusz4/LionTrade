import 'package:flutter/material.dart';

class LtElevatedButton extends StatelessWidget {
  final String text;
  final Function? onPressed;

  const LtElevatedButton({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      child: ElevatedButton(
        onPressed: () {
          if (onPressed != null) {
            onPressed;
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          minimumSize: MaterialStateProperty.all(
            const Size.fromHeight(50),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 22.0),
        ),
      ),
    );
  }
}
