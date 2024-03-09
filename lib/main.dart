import 'package:bloc/bloc.dart';
import 'package:login_page/modules/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'layout/home_layout.dart';
import 'modules/bmi/BMI_calculator.dart';
import 'modules/counter/counter_screen.dart';
import 'package:login_page/shared/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();

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