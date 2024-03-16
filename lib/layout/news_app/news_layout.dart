import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_page/layout/news_app/cubit/cubit.dart';
import 'package:login_page/layout/news_app/cubit/states.dart';
import 'package:login_page/shared/network/remote/dio_helper.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewsCubit()..getBusiness(),
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (context,state) {},
        builder: (BuildContext context, NewsStates state) {
          var cubit  = NewsCubit.get(context);

          return Scaffold(
              appBar: AppBar(
              title: Text(
              'News App',
            ),
                actions: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined))
                ],
          ),
              body: cubit.screens[cubit.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                onTap: (index){
                  cubit.changeBottomNavBar(index);
                },
                items: cubit.bottomItem,
              ),
          );
        },
      ),
    );
  }
}
