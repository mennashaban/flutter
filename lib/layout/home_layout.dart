import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/shared/commponents/commponents.dart';
import 'package:sqflite/sqflite.dart';
import '../modules/archived_tasks/archived_tasks_screen.dart';
import '../modules/done_tasks/done_tasks_screen.dart';
import '../modules/new_task/new_tasks_screen.dart';
import 'package:intl/intl.dart';

import '../shared/commponents/constants.dart';



class HomeLayout extends StatelessWidget
{

  int currentindex = 0;
  List<Widget> screens = [
    NewTaskScreen(),
    DoneTaskScreen(),
    archivedTaskScreen(),
  ];

  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  //const HomeLayout({super.key});



  late Database database;
  var scaffoldkey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  bool isBotomSheetShow = false;
  IconData fabIcon = Icons.edit;
  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        title: Text(
          titles[currentindex],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState!= null && formKey.currentState!.validate()) {
            if (isBotomSheetShow) {
              insertToDatabase(
                title: titleController.text,
                time: timeController.text,
                date: dateController.text,
              ).then((value)
              {
                getDataFromDatabase(database).then((value)
                {
                  Navigator.pop(context);
                  isBotomSheetShow = false;
                  fabIcon = Icons.edit;
                  tasks = value;
                  // print('------------------');
                  // print(tasks);
                });
              });

            }
          }
          else {
            if (scaffoldkey.currentState != null) {
              scaffoldkey.currentState!.showBottomSheet(
                    (context) => Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20.0,),
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Container(
                        //                   width: double.infinity,
                        //                   height: 120.0,
                        //                   color: Colors.blueAccent,
                        //                 ),
                        defaultFormField(
                          controller: titleController,
                          type: TextInputType.text,
                          validate: (value)
                          {
                            if(value!.isEmpty){
                              return 'title must not be empty';
                            }
                            return null;
                          },
                          label: 'task title',
                          prefix: Icons.title,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        defaultFormField(
                          controller: timeController,
                          type: TextInputType.datetime,
                          onTap: (){
                            showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value) {
                              timeController.text = value!.format(context).toString();
                              print(value.toString());
                            });
                          },
                          validate: (value)
                          {
                            if(value!.isEmpty){
                              return 'time must not be empty';
                            }
                            return null;
                          },
                          label: 'task time',
                          prefix: Icons.watch_later_outlined,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        defaultFormField(
                          controller: dateController,
                          type: TextInputType.datetime,
                          onTap: () {
                            //showDateRangePicker(context: context, firstDate: DateTime.parse('2002-05-01'), lastDate: DateTime.parse('2025-05-03'));
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.parse('2021-05-03'),
                              lastDate: DateTime.parse('2025-05-03'),

                            ).then((value){
                              //print(DateFormat.yMMMd().format(value));
                              if(value != null) {
                                dateController.text =
                                    DateFormat.yMMMd().format(value);
                              }
                            });
                          },
                          validate: (value)
                          {
                            if(value!.isEmpty){
                              return 'date must not be empty';
                            }
                            return null;
                          },
                          label: 'task date',
                          prefix: Icons.calendar_today_outlined,

                        ),
                      ],
                    ),
                  ),
                ),
              ).closed.then((value) {
                //Navigator.pop(context);
                isBotomSheetShow = false;
                fabIcon = Icons.edit;

              });
              isBotomSheetShow=true;
              fabIcon = Icons.add;
            }
          }
        },
        child: Icon(fabIcon),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.purpleAccent,
        currentIndex: currentindex,
        onTap: (index) {
          currentindex = index;
        },

        elevation: 15.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu,),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline,),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive,),
            label: 'Archived',
          ),
        ],
      ),
      body:tasks.length == 0? Center(child: CircularProgressIndicator()) : screens[currentindex],
    );
  }

  // Future<String> getName() async {
  //   return 'Ahmed Ali';
  // }


  void createDatabase() async {
    database = await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        // id integer
        // title String
        // date String
        // time String
        // status String

        print('database created');
        database
            .execute(
            'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)')
            .then((value) {
          print('table created');
        }).catchError((error) {
          print('Error When Creating Table ${error.toString()}');
        });
      },
      onOpen: (database)
      {
        getDataFromDatabase(database).then((value)
        {
          tasks = value;
          // print('------------------');
          // print(tasks);

        });
        print('database opened');
      },
    );
  }

  Future<void> insertToDatabase({required String title,required String time,required String date}) async
  {
    return await database.transaction((txn) async
    {
      await txn.rawInsert(
        'INSERT INTO tasks(title,time,date,status)VALUES("$title","$time","$date","new")',
      ).
      then((value)
      {
        print('$value inserted successfully');
      }).catchError((error) {
        print('Error When inserting data ${error.toString()}');
      });
    });
  }

  Future<List<Map>> getDataFromDatabase(database)async
  {
    return await  database.rawQuery('SELECT * FROM tasks');
  }
}

// create database
// create tables
// open database
// insert to database
// get from database
// update in database
// delete from database


