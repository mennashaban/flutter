import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_page/layout/news_app/cubit/states.dart';
import 'package:login_page/modules/sports/sports_screen.dart';
import 'package:login_page/modules/business/business_screen.dart';
import 'package:login_page/modules/science/science_screen.dart';
import 'package:login_page/modules/settings_screen/settings_screen.dart';
import 'package:login_page/modules/sports/sports_screen.dart';

import '../../../shared/network/remote/dio_helper.dart';

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
    BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
      ),
      label: 'settings',
    ),
  ];

  List<Widget> screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
    SettingsScreen(),
  ];

  void changeBottomNavBar (int index){
    currentIndex = index;
    if(index==1)
      getSports();
    if(index==2)
      getScience();

    emit(NewsBottomNavStates());
  }

  List<dynamic> business = [];

  void getBusiness(){
    emit(NewsGetBusinessLoadingStates());

    DioHelper.getData(
        url: 'v2/top-headlines',
        query:{
          'country' : 'us',
          'category': 'business',
          'apiKey' : '65f7f556ec76449fa7dc7c0069f040ca',
        }
    ).then((value){
      //print(value.data['articles'][0]['title']);
      business = value.data['articles'];
      print(business[0]['title']);
      emit(NewsGetBusinessSuccessStates());
    }).catchError((error){
      print(error.toString());
      emit(NewsGetBusinessErrorStates(error.toString()));
    });
  }


  List<dynamic> sports = [];

  void getSports(){
    emit(NewsGetSportsLoadingStates());

    if (sports.length > 0){
      DioHelper.getData(
          url: 'v2/top-headlines',
          query:{
            'country' : 'us',
            'category': 'sports',
            'apiKey' : '65f7f556ec76449fa7dc7c0069f040ca',
          }
      ).then((value){
        //print(value.data['articles'][0]['title']);
        sports = value.data['articles'];
        print(sports[0]['title']);
        emit(NewsGetSportsSuccessStates());
      }).catchError((error){
        print(error.toString());
        emit(NewsGetSportsErrorStates(error.toString()));
      });
    }else{
      emit(NewsGetSportsSuccessStates());
    }

  }


  List<dynamic> science = [];

  void getScience(){
    emit(NewsGetScienceLoadingStates());

    if(science.length > 0){
      DioHelper.getData(
          url: 'v2/top-headlines',
          query:{
            'country' : 'us',
            'category': 'science',
            'apiKey' : '65f7f556ec76449fa7dc7c0069f040ca',
          }
      ).then((value){
        //print(value.data['articles'][0]['title']);
        science = value.data['articles'];
        print(science[0]['title']);
        emit(NewsGetScienceSuccessStates());
      }).catchError((error){
        print(error.toString());
        emit(NewsGetScienceErrorStates(error.toString()));
      });
    }else{
      emit(NewsGetScienceSuccessStates());
    }

  }

}