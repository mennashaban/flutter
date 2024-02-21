import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessangerScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
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
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
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
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
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
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
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
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
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
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
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
                    
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
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
                    
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
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
                    
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
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
                    
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
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
                    
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
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
                    
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
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
                    
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}