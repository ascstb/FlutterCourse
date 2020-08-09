import 'package:components_app/src/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("MyApp_TAG: build: ");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components App',
      home: HomePage(),
    );
  }
}
