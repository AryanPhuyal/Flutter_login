import 'package:flutter/material.dart';
import './screens/loginScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login PAge",
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
