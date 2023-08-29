// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `English`
  String get language {
    return Intl.message(
      'English',
      name: 'language',
      desc: 'The current language.',
      args: [],
    );
  }

  /// `Login`
  String get loginButton {
    return Intl.message(
      'Login',
      name: 'loginButton',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailFormDescription {
    return Intl.message(
      'Email',
      name: 'emailFormDescription',
      desc: 'Description for email form',
      args: [],
    );
  }

  /// `Password`
  String get passwordFormDescription {
    return Intl.message(
      'Password',
      name: 'passwordFormDescription',
      desc: 'Description for password form',
      args: [],
    );
  }

  /// `Enter your email`
  String get emailFormHint {
    return Intl.message(
      'Enter your email',
      name: 'emailFormHint',
      desc: 'Email form hint',
      args: [],
    );
  }

  /// `Enter your password`
  String get passwordFormHint {
    return Intl.message(
      'Enter your password',
      name: 'passwordFormHint',
      desc: 'Password form hint',
      args: [],
    );
  }

  /// `Sign up with Google`
  String get signUpWithGoogleButton {
    return Intl.message(
      'Sign up with Google',
      name: 'signUpWithGoogleButton',
      desc: 'Text for the sign up with Google button',
      args: [],
    );
  }

  /// `Sign up with Apple`
  String get signUpWithAppleButton {
    return Intl.message(
      'Sign up with Apple',
      name: 'signUpWithAppleButton',
      desc: 'Text for the sign up with Google button',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
