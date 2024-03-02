import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../user/user_model.dart';




class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'menna shaaban',
      phone: '+2014567'
    ),
    UserModel(
        id: 2,
        name: 'mo shaaban',
        phone: '+201789957'
    ),
    UserModel(
        id: 3,
        name: 'fatma shaaban',
        phone: '+2017899789557'
    ),
    UserModel(
        id: 4,
        name: 'salma shaaban',
        phone: '+2014567'
    ),
    UserModel(
        id: 5,
        name: 'shaaban mahdy',
        phone: '+201789957'
    ),
    UserModel(
        id: 6,
        name: 'ansam mohamed',
        phone: '+2017899789557'
    ),
    UserModel(
        id: 1,
        name: 'menna shaaban',
        phone: '+2014567'
    ),
    UserModel(
        id: 2,
        name: 'mo shaaban',
        phone: '+201789957'
    ),
    UserModel(
        id: 3,
        name: 'fatma shaaban',
        phone: '+2017899789557'
    ),
    UserModel(
        id: 4,
        name: 'salma shaaban',
        phone: '+2014567'
    ),
    UserModel(
        id: 5,
        name: 'shaaban mahdy',
        phone: '+201789957'
    ),
    UserModel(
        id: 6,
        name: 'ansam mohamed',
        phone: '+2017899789557'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
        itemBuilder:(context, index) =>buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20.0,
          ),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,)
    );
  }

  //1. build item
  //2. build list
  //3. add item to list
  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
