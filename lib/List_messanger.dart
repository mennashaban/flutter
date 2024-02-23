import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListMessanger extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //without list
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 9.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage('https://th.bing.com/th/id/R.c01329e1c29d72e518350a5adf7d8cd5?rik=SIDYiiGGSfLf%2bQ&pid=ImgRaw&r=0'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon:
              CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt,
                  size: 16.0,
                  color: Colors.white,
                ),
              )),
          IconButton(
              onPressed: (){},
              icon:
              CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 16.0,
                  color: Colors.white,
                ),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
          
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text(
                      'search',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 125.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index)=> buildStoryItem(),
                  separatorBuilder: (context,index) => SizedBox(
                  width: 20.0,
                ),
                itemCount: 10,
                ),
              ),
              SizedBox(
                height: 2.5,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context,index)=> buildChatItem(),
                  separatorBuilder: (context,index) => SizedBox(
                    height: 20.0,
                  ),
                  itemCount: 15,
              )
          
                ]
              ),
        )
      ),
    );
  }

  //list view
  //1. build item
  //2. build list
  //3. add item to list

  //build item
  Widget buildChatItem() => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 27.0,
            backgroundImage: NetworkImage('https://th.bing.com/th/id/R.c01329e1c29d72e518350a5adf7d8cd5?rik=SIDYiiGGSfLf%2bQ&pid=ImgRaw&r=0'),
          ),
          CircleAvatar(
            radius: 7.0,
            backgroundColor: Colors.white,
          ),
          CircleAvatar(
            radius: 6.0,
            backgroundColor: Colors.green,

          ),
        ],
      ),
      SizedBox(
        width: 10.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'menna shaaban',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'hello my name is 3bsalam',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: 3.0,
                    height: 3.0,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '2:00 am',
                )
              ],
            )
          ],
        ),
      )
    ],

  );
  Widget buildStoryItem() => Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 33.0,
              backgroundImage: NetworkImage('https://th.bing.com/th/id/R.c01329e1c29d72e518350a5adf7d8cd5?rik=SIDYiiGGSfLf%2bQ&pid=ImgRaw&r=0'),
            ),
            CircleAvatar(
              radius: 8.0,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 6.5,
              backgroundColor: Colors.green,

            ),
          ],
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          'menna shaaban',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );

}