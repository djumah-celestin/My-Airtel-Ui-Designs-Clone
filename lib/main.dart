import 'package:flutter/material.dart';

void main() => runApp(MyAirtel());

class MyAirtel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Airtel',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('airtel', style: TextStyle(fontFamily: "Aclonica")),
          actions: [Icon(Icons.notifications)],
        ),
        body: Center(
          child: Text('My Airtel RDC Clone'),
        ),
      ),
    );
  }
}
