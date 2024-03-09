import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class CounterScreen extends StatelessWidget
{

  //1. constructor
  //2. init state
  //3. build

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (BuildContext context,CounterStates state){
          if(state is CounterInitialState){
            print('initial state');
          }
          if(state is CounterMinusState){
            print('Minus state ${state.counter}');
          }
          if(state is CounterPlusState){
            print('plus state ${state.counter}');
          }
        },
        builder: (BuildContext context,CounterStates state){
          return Scaffold(
            appBar: AppBar(
              title: Text(
                  'Counter'
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                      CounterCubit.get(context).minus();
                    },
                    child: Text(
                      'MInus',
                    ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Text(
                      '${CounterCubit.get(context).counter}',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      CounterCubit.get(context).plus();
                    },
                    child: Text(
                      'PLUS',
                    ),),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
