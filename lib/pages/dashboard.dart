import 'package:flutter/material.dart';


class DashBoard extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child :FlatButton.icon(
          textColor: Colors.white,
          label: Text("Cretae Claim"),
          color: Colors.redAccent[200],
          icon: Icon(Icons.create, size: 18),
          onPressed: () {
            Navigator.pushNamed(context, '/claim');
          },
        ),
      ),
    );
  }
}