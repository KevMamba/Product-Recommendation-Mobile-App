import 'package:flutter/material.dart';
import 'package:kmproject/HomePage.dart';
//import 'Final.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
      routes: {
        '/homepage': (content) => HomePage(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Recommendation',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new HomePage(),
    );
  }
}
