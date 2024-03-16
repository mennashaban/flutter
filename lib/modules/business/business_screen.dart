import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_page/layout/news_app/cubit/cubit.dart';

import '../../layout/news_app/cubit/states.dart';
import '../../shared/commponents/commponents.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewsCubit()..getBusiness(),
      child: BlocConsumer<NewsCubit,NewsStates>(
        listener: (context,state) {  },
        builder: (context,state) {
          var list = NewsCubit.get(context).business;
          return articalBuilder(list);
        },
      ),
    );
  }
}
