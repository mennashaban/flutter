import 'package:flutter/material.dart';
import 'package:login_page/users_model.dart';
import 'List_messanger.dart';
import 'counter_screen.dart';
import 'messaner_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }


}