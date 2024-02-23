import 'package:flutter/material.dart';
import 'List_messanger.dart';
import 'messaner_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListMessanger(),
    );
  }


}