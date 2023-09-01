import 'package:flutter/material.dart';
import 'package:lion_trade/generated/l10n.dart';
import 'package:lion_trade/helpers/validators.dart';
import 'package:lion_trade/theme/colors.dart';
import 'package:lion_trade/widgets/buttons/_buttons.dart';
import 'package:lion_trade/widgets/form_field/_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isObscure = true;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
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
            suffixIcon: _suffixIcon(),
            validator: FormValidators.validatePassword,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              S.current.forgotPasswordButton,
              style: const TextStyle(
                color: LtColor.black,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          LtElevatedButton(
            text: S.current.loginButton,
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
