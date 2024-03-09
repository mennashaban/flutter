import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/shared/commponents/constants.dart';

import '../../shared/commponents/commponents.dart';

class NewTaskScreen extends StatelessWidget {
  //const NewTaskScreen({super.key});

  // final List<Map> tasks;
  // NewTaskScreen({this.tasks = const []});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context,index) => buildTaskItem(tasks[index]),
        separatorBuilder: (context,index) => Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20.0,
          ),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        itemCount: tasks.length,
    );
  }
}
