import 'package:flutter/material.dart';

import 'widgets/myAppBar.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          MyAppBar(),
        ],
      ),
    );
  }
}
