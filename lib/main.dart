import 'package:flutter/material.dart';
import 'package:movies/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Movies",
      initialRoute: "/",
      routes: routes(),
    );
  }
}
