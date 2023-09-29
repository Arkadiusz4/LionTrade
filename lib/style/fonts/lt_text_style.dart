// ignore_for_file: avoid_classes_with_only_static_members
import 'package:flutter/material.dart';
import 'package:lion_trade/style/colors.dart';
import 'package:lion_trade/style/fonts/lt_font_weight.dart';

class FhTextStyle {
  static final FontWeight _interLight = LtFontWeight.light.fontWeight;
  static final FontWeight _interRegular = LtFontWeight.regular.fontWeight;
  static final FontWeight _interMedium = LtFontWeight.medium.fontWeight;
  static final FontWeight _interSemiBold = LtFontWeight.semiBold.fontWeight;
  static final FontWeight _interBold = LtFontWeight.bold.fontWeight;

  static const TextStyle _inter = TextStyle(
    fontFamily: 'Inter',
    color: LtColor.black,
    height: 1,
  );

  static final TextStyle _interSpaced = _inter.copyWith(letterSpacing: 1.0);

  static final TextStyle _inter12regular = _inter.copyWith(
    fontSize: 12.0,
    fontWeight: _interRegular,
  );

  static final TextStyle _inter12mediumSpaced = _interSpaced.copyWith(
    fontSize: 12.0,
    fontWeight: _interMedium,
  );

  static final TextStyle _inter12semibold = _inter.copyWith(
    fontSize: 12.0,
    fontWeight: _interSemiBold,
  );

  static final TextStyle _inter12semiboldSpaced = _interSpaced.copyWith(
    fontSize: 12.0,
    fontWeight: _interSemiBold,
  );

  static final TextStyle _inter14regular = _inter.copyWith(
    fontSize: 14.0,
    fontWeight: _interRegular,
  );

  static final TextStyle _inter14medium = _inter.copyWith(
    fontSize: 14.0,
    fontWeight: _interMedium,
  );

  static final TextStyle _inter14mediumSpaced = _interSpaced.copyWith(
    fontSize: 14.0,
    fontWeight: _interMedium,
  );

  static final TextStyle _inter14regularSpaced = _interSpaced.copyWith(
    fontSize: 14.0,
    fontWeight: _interRegular,
  );

  static final TextStyle _inter14semibold = _inter.copyWith(
    fontSize: 14.0,
    fontWeight: _interSemiBold,
  );

  static final TextStyle _inter14semiboldSpaced = _interSpaced.copyWith(
    fontSize: 14.0,
    fontWeight: _interSemiBold,
  );

  static final TextStyle _inter14boldSpaced = _interSpaced.copyWith(
    fontSize: 14.0,
    fontWeight: _interBold,
  );

  static final TextStyle _inter15lightSpaced = _interSpaced.copyWith(
    fontSize: 15.0,
    fontWeight: _interLight,
  );

  static final TextStyle _inter15regular = _inter.copyWith(
    fontSize: 15.0,
    fontWeight: _interRegular,
  );

  static final TextStyle _inter15regularSpaced = _interSpaced.copyWith(
    fontSize: 15.0,
    fontWeight: _interRegular,
  );

  static final TextStyle _inter16medium = _inter.copyWith(
    fontSize: 16.0,
    fontWeight: _interMedium,
  );

  static final TextStyle _inter16semiBold = _inter.copyWith(
    fontSize: 16.0,
    fontWeight: _interSemiBold,
  );

  static final TextStyle _inter16mediumSpaced = _interSpaced.copyWith(
    fontSize: 16.0,
    fontWeight: _interMedium,
  );

  static final TextStyle _inter16regular = _inter.copyWith(
    fontSize: 16.0,
    fontWeight: _interRegular,
  );

  static final TextStyle _inter16regularSpaced = _interSpaced.copyWith(
    fontSize: 16.0,
    fontWeight: _interRegular,
  );

  static final TextStyle _inter18medium = _inter.copyWith(
    fontSize: 18.0,
    fontWeight: _interMedium,
  );

  static final TextStyle _inter18regular = _inter.copyWith(
    fontSize: 18.0,
    fontWeight: _interRegular,
  );

  static final TextStyle _inter18regularSpaced = _interSpaced.copyWith(
    fontSize: 18.0,
    fontWeight: _interRegular,
  );

  static final TextStyle _inter18semiboldSpaced = _interSpaced.copyWith(
    fontSize: 18.0,
    fontWeight: _interSemiBold,
  );

  static final TextStyle _inter18mediumSpaced = _interSpaced.copyWith(
    fontSize: 18.0,
    fontWeight: _interMedium,
  );

  static final TextStyle _inter20semiBold = _inter.copyWith(
    fontSize: 20.0,
    fontWeight: _interSemiBold,
  );

  static final TextStyle _inter24regular = _inter.copyWith(
    fontSize: 24.0,
    fontWeight: _interRegular,
  );

  static final TextStyle _inter24medium = _inter.copyWith(
    fontSize: 24.0,
    fontWeight: _interMedium,
  );

  static final TextStyle _inter24semiBold = _inter.copyWith(
    fontSize: 24.0,
    fontWeight: _interSemiBold,
  );

  static final TextStyle _inter24semiBoldSpaced = _interSpaced.copyWith(
    fontSize: 24.0,
    fontWeight: _interSemiBold,
  );

  static final TextStyle _inter30medium = _inter.copyWith(
    fontSize: 30.0,
    fontWeight: _interMedium,
  );

  static final TextStyle _inter32regular = _inter.copyWith(
    fontSize: 32.0,
    fontWeight: _interRegular,
  );

  static final TextStyle _inter36regular = _inter.copyWith(
    fontSize: 36.0,
    fontWeight: _interRegular,
  );

  static final TextStyle _inter36medium = _inter.copyWith(
    fontSize: 36.0,
    fontWeight: _interMedium,
  );

  static final TextStyle _inter48regular = _inter.copyWith(
    fontSize: 48.0,
    fontWeight: _interRegular,
  );

  static TextStyle customize({
    double letterSpacing = 0.0,
    double fontSize = 12.0,
    LtFontWeight LtFontWeight = LtFontWeight.medium,
  }) {
    return TextStyle(
      fontFamily: 'Inter',
      color: LtColor.white,
      fontSize: fontSize,
      letterSpacing: letterSpacing,
      height: 1.0,
      fontWeight: LtFontWeight.fontWeight,
    );
  }

  static final TextStyle inter12regular = _inter12regular;
  static final TextStyle inter12mediumSpaced = _inter12mediumSpaced;
  static final TextStyle inter12semibold = _inter12semibold;
  static final TextStyle inter12semiboldSpaced = _inter12semiboldSpaced;
  static final TextStyle inter14boldSpaced = _inter14boldSpaced;
  static final TextStyle inter14medium = _inter14medium;
  static final TextStyle inter14mediumSpaced = _inter14mediumSpaced;
  static final TextStyle inter14regular = _inter14regular;
  static final TextStyle inter14regularSpaced = _inter14regularSpaced;
  static final TextStyle inter14semibold = _inter14semibold;
  static final TextStyle inter14semiboldSpaced = _inter14semiboldSpaced;
  static final TextStyle inter15lightSpaced = _inter15lightSpaced;
  static final TextStyle inter15regular = _inter15regular;
  static final TextStyle inter15regularSpaced = _inter15regularSpaced;
  static final TextStyle inter16medium = _inter16medium;
  static final TextStyle inter16mediumSpaced = _inter16mediumSpaced;
  static final TextStyle inter16regular = _inter16regular;
  static final TextStyle inter16regularSpaced = _inter16regularSpaced;
  static final TextStyle inter16semiBold = _inter16semiBold;
  static final TextStyle inter18medium = _inter18medium;
  static final TextStyle inter18mediumSpaced = _inter18mediumSpaced;
  static final TextStyle inter18regular = _inter18regular;
  static final TextStyle inter18regularSpaced = _inter18regularSpaced;
  static final TextStyle inter18semiboldSpaced = _inter18semiboldSpaced;
  static final TextStyle inter20semiBold = _inter20semiBold;
  static final TextStyle inter24medium = _inter24medium;
  static final TextStyle inter24regular = _inter24regular;
  static final TextStyle inter24semiBold = _inter24semiBold;
  static final TextStyle inter24semiBoldSpaced = _inter24semiBoldSpaced;
  static final TextStyle inter30medium = _inter30medium;
  static final TextStyle inter32regular = _inter32regular;
  static final TextStyle inter36medium = _inter36medium;
  static final TextStyle inter36regular = _inter36regular;
  static final TextStyle inter48regular = _inter48regular;
}
