import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  _showWarningDialog(BuildContext context, message) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Hello there!"),
            content: Text(message),
            actions: <Widget>[
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/products');
                },
              ),
            ],
          );
        });
  }

  Widget build(BuildContext context) {
    String _username = "";
    String _password = "";

    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Builder(
          builder: (context) => Container(
                margin: EdgeInsets.all(10.0),
                child: ListView(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Username'),
                      onChanged: (username) {
                        _username = username;
                      },
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: 'Password'),
                      onChanged: (password) {
                        _password = password;
                      },
                    ),
                    SizedBox(height: 10.0),
                    RaisedButton(
                      child: Text('Sign In'),
                      color: Theme.of(context).accentColor,
                      textColor: Colors.white,
                      onPressed: () {
                        this._showWarningDialog(context,
                            "Yo! $_username, your password is $_password");
                      },
                    )
                  ],
                ),
              ),
        ),
    );
  }
}
