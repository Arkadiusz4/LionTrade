import 'package:flutter/widgets.dart';
import 'package:lion_trade/style/color/colors.dart';

class LtGradient {
  const LtGradient._();

  static const LinearGradient orangeToBlack = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      LtColor.orange,
      LtColor.black,
    ],
  );

  static const LinearGradient darkOrangeToBlack = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      LtColor.orange,
      LtColor.black,
    ],
    stops: [0.1, 0.7],
  );

  static Gradient customGradient(List<Color> colors) {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[colors[0], colors[1]],
    );
  }
}
