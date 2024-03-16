import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_page/layout/news_app/cubit/states.dart';
import 'package:login_page/modules/business/business_screen.dart';
import 'package:login_page/modules/science/science_screen.dart';
import 'package:login_page/modules/sports/sports_screen.dart';

class NewsCubit extends Cubit<NewsStates>
{
  NewsCubit() : super(NewsInitialStates());
  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItem = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.business_outlined,
    ),
      label: 'business',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.sports_baseball,
      ),
      label: 'sports',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.science_sharp,
      ),
      label: 'science',
    ),
  ];

  List<Widget> screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
  ];

  void changeBottomNavBar (int index){
    currentIndex = index;
    emit(NewsBottomNavStates());
  }
}