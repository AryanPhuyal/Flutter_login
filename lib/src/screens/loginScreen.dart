import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            emailField(),
            passwordField(),
            spaceAround(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() => TextFormField(
        decoration: InputDecoration(
            hintText: 'something@some@sonthing.com',
            labelText: "Input Email address"),
        keyboardType: TextInputType.emailAddress,
      );

  Widget passwordField() => TextField(
        decoration: InputDecoration(
          hintText: "Passsword",
          labelText: "Enter Password",
        ),
        obscureText: true,
      );
  Widget submitButton() => RaisedButton(
        color: Colors.blue,
        splashColor: Colors.blueGrey,
        child: Container(
          margin: EdgeInsets.all(10),
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        onPressed: () {},
      );

  Widget spaceAround() => Container(
        height: 20,
      );
}
