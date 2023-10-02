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

  /// `Let's start`
  String get loginButton {
    return Intl.message(
      'Let\'s start',
      name: 'loginButton',
      desc: 'Text for the login button',
      args: [],
    );
  }

  /// `Your history begins here`
  String get welcomeText {
    return Intl.message(
      'Your history begins here',
      name: 'welcomeText',
      desc: 'Text for the welcome header',
      args: [],
    );
  }

  /// `Please sign in to your account`
  String get signInText {
    return Intl.message(
      'Please sign in to your account',
      name: 'signInText',
      desc: 'Text for the login page',
      args: [],
    );
  }

  /// `email`
  String get emailHint {
    return Intl.message(
      'email',
      name: 'emailHint',
      desc: 'Text for the login page',
      args: [],
    );
  }

  /// `password`
  String get passwordHint {
    return Intl.message(
      'password',
      name: 'passwordHint',
      desc: 'Text for the login page',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPasswordButton {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPasswordButton',
      desc: 'Text for the forgot password button',
      args: [],
    );
  }

  /// `You can log in via platforms or biometrics`
  String get otherLogins {
    return Intl.message(
      'You can log in via platforms or biometrics',
      name: 'otherLogins',
      desc: 'Text for the login page',
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
