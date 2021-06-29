import 'package:flutter/material.dart';

void main() => runApp(MyAirtel());

class MyAirtel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Airtel',
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('DeviceSimulator Demo'),
        ),
        body: Center(
          child: Text('My Airtel RDC Clone'),
        ),
      ),
    );
  }
}
