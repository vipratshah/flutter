import 'package:firstapp/pages/create_claim.dart';
import 'package:flutter/material.dart';
import 'pages/create_claim.dart';
import 'pages/claim_history.dart';
import 'pages/dashboard.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Dashboard", Icons.dashboard),
    new DrawerItem("Submit Claim", Icons.create),
    new DrawerItem("Claim History", Icons.history),
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new DashBoard();
      case 1:
        return new Claim();
      case 2:
        return new ClaimHistory();
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(d.icon, color: Colors.redAccent,),
        title: new Text(d.title, style: TextStyle(
          color: Colors.red
        ),),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
        backgroundColor: Colors.redAccent,
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.redAccent
                ),
                accountName: new Text("Hello, Viprat"), accountEmail: null),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
