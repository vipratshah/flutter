import 'package:firstapp/pages/create_claim.dart';
import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/dashboard.dart';
import 'pages/create_claim.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      title: 'Claim',
      routes: {
        '/': (context) => Login(),
        '/home': (context) => Login(),
        '/dashboard': (context) => DashBoard(),
        '/claim': (context) => Claim(),
      },
    );
  }
}
