import 'package:flutter/material.dart';
import 'package:flutter_lab/home_page.dart';

// The entry point of the application
void main() {
  runApp(const MyApp());
}

// A stateless class widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lab Test SKR4307',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Colors.blue,
      colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      ),
      ),
      
      home: MyHomePage(),
    );
  }
}
