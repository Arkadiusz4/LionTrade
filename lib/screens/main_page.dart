import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lion_trade/screens/auth/auth_body.dart';
import 'package:lion_trade/screens/home/home_body.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Something went wrong"));
          } else if (snapshot.hasData) {
            return const HomeBody();
          } else {
            return const AuthBody();
          }
        },
      ),
    );
  }
}
