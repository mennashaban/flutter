import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:login_page/modules/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/shared/network/remote/dio_helper.dart';
import 'layout/home_layout.dart';
import 'layout/news_app/news_layout.dart';
import 'modules/bmi/BMI_calculator.dart';
import 'modules/challenges/maintest.dart';
import 'modules/challenges/test1.dart';
import 'modules/challenges/test2.dart';
import 'modules/challenges/test3.dart';
import 'modules/counter/counter_screen.dart';
import 'package:login_page/shared/bloc_observer.dart';
import 'package:flutter/services.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  DioHelper.dio;

  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.orangeAccent,
      statusBarBrightness: Brightness.light,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrange,
          elevation: 20.0,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
        ),
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            iconColor: MaterialStateProperty.all<Color>(Colors.black),
          ),
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black26,
      ),
      themeMode: ThemeMode.light,
      home: NewsLayout(),
      // routes: {
      //   '/login': (context)=>LoginScreen(),
      // },

    );
  }


}