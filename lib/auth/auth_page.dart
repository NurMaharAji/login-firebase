import 'package:flutter/material.dart';
import 'package:tim4/screen/login_screen.dart';
import 'package:tim4/screen/signup_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  bool showLoginScreen = true;

  void toggleScreens() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginScreen) {
      return LoginScreen(showSignupScreen: toggleScreens);
    } else {
      return SignupScreen(showLoginScreen: toggleScreens);
    }
  }
}