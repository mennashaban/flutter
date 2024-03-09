import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/boe.png'),
              ),
              Positioned(
                //top: 30.0,
                bottom: 220.0,
                child: Image
                  (image: AssetImage('assets/images/shoes2.png')),
              ),
              Positioned(
                child: Transform.translate(
                  offset: Offset(0,100),
                  child: Text(
                    'Let’s Start Journey With Nike',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 34.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      height: 1.3, // line height
                      letterSpacing: 0.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0,150),
                child: Text(
                    'Smart, Gorgeous & Fashionable\n Collection Explor Now',
                  style: TextStyle(
                    color: Color(0xFFD8D8D8),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                bottom: 50.0,
                child: Image(
                  image: AssetImage('assets/images/nike_shaded.png'),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}