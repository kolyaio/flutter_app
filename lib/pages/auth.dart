import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {

  AuthPage(this._authUsername, this._authPassword);
  final String _authUsername;
  final String _authPassword;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('LOGIN'),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/products');
          },
        ),
      ),
    );
  }
}
