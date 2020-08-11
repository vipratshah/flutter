import 'package:flutter/material.dart';


class ClaimHistory extends StatelessWidget{
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Claim History'),
      //   centerTitle: true,
      //   backgroundColor: Colors.redAccent,
      // ),
      body: Center(
        child :FlatButton.icon(
          textColor: Colors.white,
          label: Text("History"),
          color: Colors.redAccent[200],
          icon: Icon(Icons.create, size: 18),
          onPressed: () {
          },
        ),
      ),
    );
  }
}