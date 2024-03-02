import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bmi_result/bmi_result_screen.dart';


class BMiScreen extends StatefulWidget {
  const BMiScreen({super.key});

  @override
  State<BMiScreen> createState() => _BMiScreenState();
}

class _BMiScreenState extends State<BMiScreen> {
  bool isMale = true;
  double height = 120.0;
  int weight = 40;
  int age = 20;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'BMI Calculator',
          ),
      ),
      body: Column(
        children: [
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                          setState(() {
                            isMale=true;
                          });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/male.png'),
                              height: 80.0,
                              width: 90.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: isMale ? Colors.blue : Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                          setState(() {
                            isMale = false;
                          });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/female.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: isMale ? Colors.grey[400] : Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40.0,
                          ),
                        ),
                        Text(
                          'CM',
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value){
                          setState(() {
                            height = value;
                          });
                        },)
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                 children: [
                   Expanded(
                     child: Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(
                             'WEIGHT',
                             style: TextStyle(
                               fontSize: 25.0,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           Text(
                             '$weight',
                             style: TextStyle(
                               fontWeight: FontWeight.w900,
                               fontSize: 40.0,
                             ),
                           ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 FloatingActionButton(
                                     onPressed: (){
                                       setState(() {
                                         weight--;
                                       });
                                     },
                                     heroTag: 'WEIGHT-',
                                     mini: true,
                                     child: Icon(Icons.remove,)
                                 ),
                                 FloatingActionButton(
                                     onPressed: (){
                                       setState(() {
                                         weight++;
                                       });
                                     },
                                     heroTag: 'WEIGHT+',
                                     mini: true,
                                     child: Icon(Icons.add,)
                                 ),
                               ],
                             ),

                         ],
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0,),
                         color: Colors.grey[300],
                       ),
                     ),
                   ),
                   SizedBox(
                     width: 20.0,
                   ),
                   Expanded(
                     child: Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(
                             'AGE',
                             style: TextStyle(
                               fontSize: 25.0,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           Text(
                             '$age',
                             style: TextStyle(
                               fontWeight: FontWeight.w900,
                               fontSize: 40.0,
                             ),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 FloatingActionButton(
                                     onPressed: (){
                                       setState(() {
                                         age--;
                                       });
                                     },
                                     heroTag: 'age-',
                                     mini: true,
                                     child: Icon(Icons.remove,)
                                 ),
                                 FloatingActionButton(
                                     onPressed: (){
                                       setState(() {
                                         age++;
                                       });
                                     },
                                     heroTag: 'age-',
                                     mini: true,
                                     child: Icon(Icons.add,)
                                 ),
                               ],
                             ),

                         ],
                       ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0,),
                         color: Colors.grey[300],
                       ),
                     ),
                   ),

                 ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.grey,
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height / 100, 2);
                print(result.round());

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=> BMIResultScreen(
                          age: age,
                          isMale: isMale,
                          result: result.round(),
                        ),
                    ));
              },
              height: 50.0,
              child: Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
