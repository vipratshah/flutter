import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: FlatButton.icon(
          textColor: Colors.white,
          label: Text("Login"),
          color: Colors.redAccent[200],
          icon: Icon(Icons.verified_user, size: 18),
          onPressed: () {
            Navigator.pushNamed(context, '/dashboard');
          },
        ),
      ),
    );
  }
}
