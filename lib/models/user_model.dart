import '_models.dart';

class User {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final DateTime registrationDate;
  final List<News> savedNews;
  final List<News> likedNews;
  final AppleAuth? appleAuth;
  final GoogleAuth? googleAuth;
  final FacebookAuth? facebookAuth;

  final bool receiveNewsUpdates;
  final bool receiveEventNotifications;
  final bool receivePromotionalEmails;

  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.registrationDate,
    required this.savedNews,
    required this.likedNews,
    this.appleAuth,
    this.googleAuth,
    this.facebookAuth,
    this.receiveNewsUpdates = true,
    this.receiveEventNotifications = true,
    this.receivePromotionalEmails = true,
  });
}

class AppleAuth {
  final String appleId;
  final String appleEmail;

  AppleAuth({
    required this.appleId,
    required this.appleEmail,
  });
}

class GoogleAuth {
  final String googleId;
  final String googleEmail;

  GoogleAuth({
    required this.googleId,
    required this.googleEmail,
  });
}

class FacebookAuth {
  final String facebookId;
  final String facebookEmail;

  FacebookAuth({
    required this.facebookId,
    required this.facebookEmail,
  });
}
