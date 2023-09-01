import 'package:flutter/material.dart';
import 'package:lion_trade/generated/l10n.dart';
import 'package:lion_trade/helpers/validators.dart';
import 'package:lion_trade/widgets/buttons/_buttons.dart';
import 'package:lion_trade/widgets/form_field/_form_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool _isObscure = true;

  @override
  void dispose() {
    _nameController.dispose();
    _surnameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          LtTextFormField(
            controller: _nameController,
            textInputType: TextInputType.name,
            textInputAction: TextInputAction.next,
            hintText: S.current.nameFormHint,
            validator: FormValidators.validateName,
          ),
          LtTextFormField(
            controller: _surnameController,
            textInputType: TextInputType.name,
            textInputAction: TextInputAction.next,
            hintText: S.current.surnameFormHint,
            validator: FormValidators.validateName,
          ),
          LtTextFormField(
            controller: _emailController,
            textInputType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            hintText: S.current.emailFormHint,
            validator: FormValidators.validateEmail,
          ),
          LtTextFormField(
            controller: _passwordController,
            textInputType: TextInputType.text,
            textInputAction: TextInputAction.done,
            hintText: S.current.passwordFormHint,
            obscureText: _isObscure,
            validator: FormValidators.validatePassword,
            suffixIcon: _suffixIcon(),
          ),
          LtElevatedButton(
            text: S.current.registerButton,
            onPressed: () {
              _formKey.currentState!.validate();
            },
            minWidth: 250.0,
          ),
        ],
      ),
    );
  }

  Widget _suffixIcon() {
    return IconButton(
      icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
      onPressed: () {
        setState(() {
          _isObscure = !_isObscure;
        });
      },
    );
  }
}
