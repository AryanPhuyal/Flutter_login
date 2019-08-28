import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  var email;
  var password;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: formKey,
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
        validator: emailValidation,
        onSaved: (String value) => email = value,
      );

  Widget passwordField() => TextFormField(
        decoration: InputDecoration(
          hintText: "Passsword",
          labelText: "Enter Password",
        ),
        obscureText: true,
        validator: passwordValidate,
        onSaved: (String value) => password = value,
      );
  Widget submitButton() => RaisedButton(
        color: Colors.blue,
        splashColor: Colors.blueGrey,
        child: Container(
          margin: EdgeInsets.all(10),
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white24,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        onPressed: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
            print("time to posy $email and $password");
          }
        },
      );

  Widget spaceAround() => Container(
        height: 20,
      );
}
