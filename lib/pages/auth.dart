import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _usernameValue;
  String _passwordValue;
  bool _acceptTerms = false;

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
                  if (_checkLogin(context)) {
                    Navigator.pushReplacementNamed(context, '/products');
                  } else {
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          );
        });
  }

  bool _checkLogin(BuildContext context) {
    bool usernameIsNotNullOrEmpty =
        (this._usernameValue != null) && (this._usernameValue != "");
    bool passwordIsNotNullOrEmpty =
        (this._passwordValue != null) && (this._passwordValue != "");
    if (usernameIsNotNullOrEmpty && passwordIsNotNullOrEmpty) {
      return true;
    }
    return false;
  }

  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
        image: AssetImage('assets/background.jpg'),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop));
  }

  Widget _buildUsernameTextField() {
    return TextField(
      decoration: InputDecoration(
          labelText: 'Username', filled: true, fillColor: Colors.white),
      onChanged: (String value) {
        setState(() {
          _usernameValue = value;
        });
      },
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          labelText: 'Password', filled: true, fillColor: Colors.white),
      onChanged: (String value) {
        setState(() {
          _passwordValue = value;
        });
      },
    );
  }

  Widget _buildSwitchTite() {
    return SwitchListTile(
      value: _acceptTerms,
      onChanged: (bool value) {
        setState(() {
          _acceptTerms = value;
        });
      },
      title: Text('Accept Terms'),
    );
  }

  void _submitForm() {
    if (_checkLogin(context)) {
      _showWarningDialog(
          context, "Yo! $_usernameValue, your password is $_passwordValue");
    } else {
      _showWarningDialog(context, "You must enter your username and password");
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: _buildBackgroundImage(),
        ),
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _buildUsernameTextField(),
                SizedBox(height: 10.0),
                _buildPasswordTextField(),
                _buildSwitchTite(),
                SizedBox(height: 10.0),
                RaisedButton(
                  child: Text('Sign In'),
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  onPressed: _submitForm,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
