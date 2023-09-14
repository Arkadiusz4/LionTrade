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

  /// `Register`
  String get registerButton {
    return Intl.message(
      'Register',
      name: 'registerButton',
      desc: 'Text for the register button',
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

  /// `Name`
  String get nameFormHint {
    return Intl.message(
      'Name',
      name: 'nameFormHint',
      desc: '',
      args: [],
    );
  }

  /// `Surname`
  String get surnameFormHint {
    return Intl.message(
      'Surname',
      name: 'surnameFormHint',
      desc: '',
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

  /// `Google`
  String get signUpWithGoogleButton {
    return Intl.message(
      'Google',
      name: 'signUpWithGoogleButton',
      desc: 'Text for the sign up with Google button',
      args: [],
    );
  }

  /// `Apple`
  String get signUpWithAppleButton {
    return Intl.message(
      'Apple',
      name: 'signUpWithAppleButton',
      desc: 'Text for the sign up with Google button',
      args: [],
    );
  }

  /// `Continue with`
  String get continueWith {
    return Intl.message(
      'Continue with',
      name: 'continueWith',
      desc: 'Text for login button section',
      args: [],
    );
  }

  /// `Personal info`
  String get personalInfo {
    return Intl.message(
      'Personal info',
      name: 'personalInfo',
      desc: 'Text for card in settings screen',
      args: [],
    );
  }

  /// `Language, account settings`
  String get personalInfoDescription {
    return Intl.message(
      'Language, account settings',
      name: 'personalInfoDescription',
      desc: 'Text for description on card in settings screen',
      args: [],
    );
  }

  /// `Contact permissions`
  String get contactPermissions {
    return Intl.message(
      'Contact permissions',
      name: 'contactPermissions',
      desc: 'Text for card in settings screen',
      args: [],
    );
  }

  /// `Notifications and app permissions`
  String get contactPermissionsDescription {
    return Intl.message(
      'Notifications and app permissions',
      name: 'contactPermissionsDescription',
      desc: 'Text for description on card in settings screen',
      args: [],
    );
  }

  /// `Change password`
  String get changePassword {
    return Intl.message(
      'Change password',
      name: 'changePassword',
      desc: 'Text for card in settings screen',
      args: [],
    );
  }

  /// `Change password`
  String get changePasswordDescription {
    return Intl.message(
      'Change password',
      name: 'changePasswordDescription',
      desc: 'Text for description on card in settings screen',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: 'Text for card in settings screen',
      args: [],
    );
  }

  /// `Know about our app`
  String get supportDescription {
    return Intl.message(
      'Know about our app',
      name: 'supportDescription',
      desc: 'Text for description on card in settings screen',
      args: [],
    );
  }

  /// `Log out`
  String get logOut {
    return Intl.message(
      'Log out',
      name: 'logOut',
      desc: 'Text for card in settings screen',
      args: [],
    );
  }

  /// `Log out from the app`
  String get logOutDescription {
    return Intl.message(
      'Log out from the app',
      name: 'logOutDescription',
      desc: 'Text for description on card in settings screen',
      args: [],
    );
  }

  /// `Delete account`
  String get deleteAccount {
    return Intl.message(
      'Delete account',
      name: 'deleteAccount',
      desc: 'Text for card in settings screen',
      args: [],
    );
  }

  /// `Delete your account`
  String get deleteAccountDescription {
    return Intl.message(
      'Delete your account',
      name: 'deleteAccountDescription',
      desc: 'Text for description on card in settings screen',
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
