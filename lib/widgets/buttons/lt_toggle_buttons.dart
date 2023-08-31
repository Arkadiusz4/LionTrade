import 'package:flutter/material.dart';
import 'package:lion_trade/theme/colors.dart';

class LtToggleButton extends StatefulWidget {
  final String labelText1;
  final String labelText2;
  final Function(int) onToggle;

  const LtToggleButton({
    Key? key,
    required this.labelText1,
    required this.labelText2,
    required this.onToggle,
  }) : super(key: key);

  @override
  State<LtToggleButton> createState() => _LtToggleButtonState();
}

class _LtToggleButtonState extends State<LtToggleButton> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: ToggleButtons(
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        borderColor: LtColor.navy,
        borderWidth: 2.0,
        selectedBorderColor: LtColor.navy,
        fillColor: LtColor.navy,
        selectedColor: LtColor.white,
        color: LtColor.navy,
        isSelected: isSelected,
        constraints: BoxConstraints(
          minHeight: 50.0,
          minWidth: MediaQuery.of(context).size.width / 2 - 40,
        ),
        onPressed: (int newIndex) {
          setState(() {
            for (int index = 0; index < isSelected.length; index++) {
              isSelected[index] = index == newIndex;
            }
          });
          widget.onToggle(newIndex);
        },
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              widget.labelText1,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              widget.labelText2,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
