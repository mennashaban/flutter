import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Text(
              'WELLCOME TO \n\t\t\t\t\t\t\t\t NIKE',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,

              ),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/boe.png'),
              ),
              Positioned(
                //bottom: 80.0,
                child: Image(
                  image: AssetImage('assets/images/nike_shaded.png'),
                ),
              ),
              Positioned(
                //top: 30.0,
                bottom: 220.0,
                child: Image
                  (image: AssetImage('assets/images/shoes.png')),
              )
            ],
          ),
        ],
      ),
    );
  }
}