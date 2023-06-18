import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Login Screen',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 32.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Email Address',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                obscureText: true,
              ),
            ],
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Perform login operation
              String email = _emailController.text;
              String password = _passwordController.text;
              // Add your login logic here

              // Example of printing the login details
              print('Email: $email');
              print('Password: $password');
            },
            child: Text('Login'),
          ),
          SizedBox(height: 16.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                // Perform sign up with Google operation
                // Add your sign up with Google logic here
              },
              icon: Icon(
                FontAwesomeIcons.google,
                color: Colors.white,
              ),
              label: Text('Sign Up with Google'),
            ),
          ),
          SizedBox(height: 8.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {
                // Perform sign up with Apple operation
                // Add your sign up with Apple logic here
              },
              icon: Icon(
                FontAwesomeIcons.apple,
                color: Colors.white,
              ),
              label: Text('Sign Up with Apple'),
            ),
          ),
        ],
      ),
    );
  }
}
