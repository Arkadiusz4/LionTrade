import 'package:flutter/material.dart';

class LtTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final String hintText;
  final FormFieldValidator<String>? validator;

  final bool autocorrect;
  final bool obscureText;
  final TextCapitalization textCapitalization;

  const LtTextFormField({
    required this.controller,
    required this.textInputType,
    required this.textInputAction,
    required this.hintText,
    this.validator,
    this.autocorrect = true,
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.none,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      child: TextFormField(
        controller: controller,
        validator: validator,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
            borderSide: BorderSide(
              width: 3.0,
              color: Colors.blue,
            ),
          ),
        ),
        textCapitalization: textCapitalization,
        maxLines: 1,
        key: key,
        autocorrect: autocorrect,
        obscureText: obscureText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
