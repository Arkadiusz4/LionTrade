import 'package:flutter/material.dart';
import 'package:lion_trade/style/color/colors.dart';
import 'package:lion_trade/style/fonts/_fonts_style.dart';

class LtTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String hintText;
  final FormFieldValidator<String>? validator;

  final bool autocorrect;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final Widget? suffixIcon;

  const LtTextFormField({
    required this.controller,
    required this.textInputType,
    required this.textInputAction,
    required this.hintText,
    this.validator,
    this.autocorrect = true,
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.none,
    this.suffixIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      child: TextFormField(
        controller: controller,
        validator: validator,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        decoration: InputDecoration(
          filled: true,
          fillColor: LtColor.grey,
          hintText: hintText,
          suffixIcon: suffixIcon,
          hintStyle: LtTextStyle.customize(
            color: LtColor.lightGrey,
            fontSize: 14.0,
            LtFontWeight: LtFontWeight.light,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 3.0,
              color: LtColor.white,
            ),
          ),
        ),
        textCapitalization: textCapitalization,
        maxLines: 1,
        key: key,
        autocorrect: autocorrect,
        obscureText: obscureText,
        textAlign: TextAlign.center,
        style: LtTextStyle.customize(
          color: LtColor.white,
          fontSize: 14.0,
          LtFontWeight: LtFontWeight.light,
        ),
      ),
    );
  }
}
