import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(user!.email!),
            ElevatedButton(
              onPressed: () => FirebaseAuth.instance.signOut(),
              child: Text("Sign out"),
            ),
          ],
        ),
      ),
    );
  }
}
