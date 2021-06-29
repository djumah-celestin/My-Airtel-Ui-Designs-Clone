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
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('Airtel'),
          actions: [Icon(Icons.notifications)],
        ),
        body: Center(
          child: Text('My Airtel RDC Clone'),
        ),
      ),
    );
  }
}
