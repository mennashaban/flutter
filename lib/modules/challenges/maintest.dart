import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:login_page/modules/challenges/test2.dart';
import 'package:login_page/modules/challenges/test3.dart';
import 'package:login_page/modules/login/login_screen.dart';


import 'lasTest.dart';

class NavigationScreens extends StatefulWidget {
  const NavigationScreens({super.key});

  @override
  State<NavigationScreens> createState() => _NavigationScreensState();
}

class _NavigationScreensState extends State<NavigationScreens> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.blue,
      pages: [
        PageViewModel(
          title: ' ّ',
          bodyWidget: page2(),
          decoration: PageDecoration(
            // Set the background color for the first page
            boxDecoration: BoxDecoration(
              color: Colors.blue, // Change this color as needed
            ),

          ),
        ),
        PageViewModel(
          title: ' ّ',
          bodyWidget: page3(),
          decoration: PageDecoration(
            // Set the background color for the first page
            boxDecoration: BoxDecoration(
              color: Colors.blue, // Change this color as needed
            ),
          ),
        ),
        PageViewModel(
          title: ' ّ',
          bodyWidget: page4(),
          decoration: PageDecoration(
            // Set the background color for the first page
            boxDecoration: BoxDecoration(
              color: Colors.blue, // Change this color as needed
            ),
          ),
        ),
      ],
      showNextButton: false,
      done: Text("Get Started"),
      onDone: () {
        // Handle the onDone action
        Navigator.pushNamed(context, '/login');
      },
    );
  }
}